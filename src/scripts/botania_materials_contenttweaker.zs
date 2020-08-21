#loader contenttweaker
#modloaded botania conarm crafttweakerutils manatweaks tconstruct

// Author: Nihiltres
// Integrates Botania's materials with Tinker's Construct and Construct's Armory
// ContentTweaker side: implements materials and fluids
// Version: 1.0

//Imports
	import crafttweaker.block.IBlock;
	import crafttweaker.block.IBlockDefinition;
	import crafttweaker.block.IBlockState;
	import crafttweaker.damage.IDamageSource;
	import crafttweaker.data.IData;
	import crafttweaker.entity.IEntity;
	import crafttweaker.entity.IEntityEquipmentSlot;
	import crafttweaker.entity.IEntityLivingBase;
	import crafttweaker.event.BlockHarvestDropsEvent;
	import crafttweaker.event.IBlockEvent;
	import crafttweaker.event.IEventPositionable;
	import crafttweaker.event.PlayerBreakSpeedEvent;
	import crafttweaker.item.IItemStack;
	import crafttweaker.liquid.ILiquidStack;
	import crafttweaker.player.IPlayer;
	import crafttweaker.potions.IPotion;
	import crafttweaker.potions.IPotionEffect;
	import crafttweaker.util.Position3f;
	import crafttweaker.world.IBlockPos;
	import crafttweaker.world.IFacing;
	import crafttweaker.world.IWorld;
	import mods.contenttweaker.Color;
	import mods.contenttweaker.Fluid;
	import mods.contenttweaker.Material as PartMaterial;
	import mods.contenttweaker.MaterialPart;
	import mods.contenttweaker.MaterialSystem;
	import mods.contenttweaker.VanillaFactory;
	import mods.contenttweaker.conarm.ArmorTrait;
	import mods.contenttweaker.conarm.ArmorTraitBuilder;
	import mods.contenttweaker.conarm.ExtendedMaterialBuilder;
	import mods.contenttweaker.tconstruct.Material;
	import mods.contenttweaker.tconstruct.MaterialBuilder;
	import mods.contenttweaker.tconstruct.Trait;
	import mods.contenttweaker.tconstruct.TraitBuilder;
	import mods.ctutils.utils.Math;
	import mods.ctutils.world.World;
	import mods.manatweaks.DamageHelper;
	import mods.manatweaks.ManaHandler;
	import mods.manatweaks.PixieHandler;
//----

//Startup log-entry
	print("Initializing 'botania_materials_contenttweaker.zs'...");
//----

//Global utility functions and data
	//Shortcut for initializing fluid versions
	global initMoltenMetal as function (string, int, int, int) Fluid =
		function (name as string, color as int, luminosity as int, temperature as int) as Fluid {
			var liq = VanillaFactory.createFluid(name, color);
			liq.density = 3000;
			liq.viscosity = 3000;
			liq.luminosity = luminosity;
			liq.material = <blockmaterial:lava>;
			liq.temperature = temperature;
			liq.stillLocation = "tconstruct:blocks/fluids/molten_metal";
			liq.flowingLocation = "tconstruct:blocks/fluids/molten_metal_flow";
			return liq;
		};
	//Checks if a Tinker's tool has the modifier associated with the appropriate string
	global hasModifier as function (IItemStack, string) bool =
		function (tool as IItemStack, modifier as string) as bool {
			if (isNull(tool) | isNull(modifier)) {return false;}
			if (
				!(tool.definition.owner has "tconstruct") &
				!(tool.definition.owner has "conarm")
			) {return false;}
			val td = tool.tag;
			if (isNull(td)) {return false;}
			val tdm = tool.tag.Modifiers;
			if (isNull(tdm) | isNull(tdm.asList()) | (tdm.asList().length == 0)) {return false;}
			for mod in tdm.asList() {
				var i = mod.identifier;
				if (!isNull(i) & (i.asString() == modifier)) {return true;}
			}
			return false;
		};
	//Counts the number of armour pieces with the given trait
	global traitSetCount as function (IEntity, string) int =
		function (entity as IEntity, modifier as string) as int {
			var count = 0;
			for item in entity.armorInventory {
				if (!isNull(item) & hasModifier(item, modifier)) {count += 1;}
			}
			return count;
		};
	//Maps pieces higher on the body to higher numbers; some traits should only run once even if multiple items have it
	global armourSetHeightMap as int[string] = {
		"item.conarm.boots":      1,
		"item.conarm.leggings":   2,
		"item.conarm.chestplate": 3,
		"item.conarm.helmet":     4
	};
	//Maps conarm items to their inventory slots
	global armourSlotMap as IEntityEquipmentSlot[string] = {
		"item.conarm.boots":      IEntityEquipmentSlot.feet(),
		"item.conarm.leggings":   IEntityEquipmentSlot.legs(),
		"item.conarm.chestplate": IEntityEquipmentSlot.chest(),
		"item.conarm.helmet":     IEntityEquipmentSlot.head()
	};
	//Checks which piece of a set is the highest on the body; used to run "set" effects only once
	global isHighestSetPiece as function(string, IItemStack, IEntity) bool =
		function (modifier as string, armour as IItemStack, entity as IEntity) as bool {
			val armourVal = armourSetHeightMap[armour.name];
			if (armourVal == 4) {return true;}
			for item in entity.armorInventory {
				if (!isNull(item)) {
					if (armourSetHeightMap has item.name) {
						if (hasModifier(item, modifier)) {
							if (armourSetHeightMap[item.name] > armourVal) {return false;}
						}
					}
				}
			}
			return true;
		};
	//Initializes a material more tersely
	global initMaterial as function (string, int, bool, bool) ExtendedMaterialBuilder =
		function (name as string, colorIn as int, craftableIn as bool, castableIn as bool) as ExtendedMaterialBuilder {
			var mat = ExtendedMaterialBuilder.create(name);
			mat.color = colorIn;
			mat.craftable = craftableIn;
			mat.castable = castableIn;
			return mat;
		};
	//A DRY function for cancelling tool damage with mana
	global manaDamageCancel as function (int, IEntity, int) int =
		function (newAmount as int, player as IEntity, cost as int) as int {
			if (newAmount <= 0) {return newAmount;}
			if (cost <= 0) {return 0;}
			var available = ManaHandler.requestMana(player, newAmount * cost, false);
			available -= available % cost;
			if (available == 0) {return newAmount;}
			val cancelled as int = ManaHandler.requestMana(player, available, true) / cost;
			return (newAmount - cancelled);
		};
//----

//Global variables containing data for traits
	global colourMap as string[int] = {
		 0: "white",
		 1: "orange",
		 2: "magenta",
		 3: "light_blue",
		 4: "yellow",
		 5: "lime",
		 6: "pink",
		 7: "gray",
		 8: "silver",
		 9: "cyan",
		10: "purple",
		11: "blue",
		12: "brown",
		13: "green",
		14: "red",
		15: "black"
	};
//----

//Custom traits
	//Pixielated (spawn pixies, or strengthen pixies spawned by the former)
	val traitpixielated = TraitBuilder.create("pixielated");
	//No direct effect! See the armour equivalent
	traitpixielated.register();
	val traitpixielatedArmour = ArmorTraitBuilder.create("pixielated");
	traitpixielatedArmour.onHurt =
		function (trait, armour, player, source as IDamageSource, damage, newDamage, event) {
			if (isHighestSetPiece("pixielated_armor", armour, player)) {
				var chance as double = 0.20d * traitSetCount(player, "pixielated_armor");
				if (Math.random() < chance) {
					PixieHandler.spawnPixie(
						player.x,(player.y + 2.0d), player.z, source.getTrueSource(), player,
						hasModifier(player.getItemInSlot(IEntityEquipmentSlot.mainHand()), "pixielated") ? 8.0f : 4.0f
					);
				}
			}
			return newDamage;
		};
	traitpixielatedArmour.register();
	//Mana
	val traitMana = TraitBuilder.create("mana");
	traitMana.onUpdate =
		function (trait, tool, world, player, slot, selected) {
			player.manaRepairSlot(slot, 120, 1);
		};
	traitMana.onToolDamage =
		function (trait, tool, amount, newAmount, player) {
			return manaDamageCancel(newAmount, player, 60);
		};
	traitMana.register();
	val traitManaArmour = ArmorTraitBuilder.create("mana");
	traitManaArmour.onArmorTick =
		function(trait, armour, world, player) {
			if (armourSlotMap.keys has armour.name) {
				player.manaRepairSlot(armourSlotMap[armour.name], 140, 1);
			}
		};
	traitManaArmour.onUpdate =
		function (trait, armour, world, player, slot, selected) {
			player.manaRepairSlot(slot, 140, 1);
		};
	traitManaArmour.onArmorDamaged =
		function (trait, armour, damageSource, amount, newAmount, player, index) {
			return manaDamageCancel(newAmount, player, 70);
		};
	traitManaArmour.register();
	//----
	//Solar (generate mana in sunlight when at full durability)
	val traitSolar = TraitBuilder.create("solar");
	traitSolar.onUpdate =
		function (trait, tool, world, player, slot, selected) {
			if (!selected | (world.time % 320) != 0) {return;}
			if ((tool.damage == 0) & world.isSurfaceWorld() & world.isDayTime()) {
				if World.canSeeSky(world, player.position3f.asBlockPos()) {
					ManaHandler.dispatchMana(player, 1, true);
				}
			}
		};
	traitSolar.register();
	//----
	//Terrestrial (healing on armour; flower-planting on mob-kills for tools)
	val traitTerrestrial = TraitBuilder.create("terrestrial");
	traitTerrestrial.afterHit =
		function (trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
			if (!wasHit | damageDealt <= 0 | target.health > 0) {return;}
			if (Math.random() < 0.5) {
				val world = target.world;
				val pos = target.getPosition3f() as IBlockPos;
				if (world.isAirBlock(pos) & <item:botania:flower>.asBlock().definition.canPlaceBlockAt(world, pos)) {
					world.setBlockState(
						IBlockState.getBlockState(
							"botania:flower", "color=" ~ colourMap[Math.round(Math.random() * 16)] ~ ",type=poppy"
						),
						pos
					);
				}
			}
		};
	traitTerrestrial.register();
	val traitTerrestrialArmour = ArmorTraitBuilder.create("terrestrial");
	traitTerrestrialArmour.onArmorTick =
		function(trait, armour, world, player) {
			if ((world.time % 80) == 0) {
				if (isHighestSetPiece("terrestrial_armor", armour, player)) {
					var chance as double = 0.25d * traitSetCount(player, "terrestrial_armor");
					chance *= (chance * chance); //Cube
					if (Math.random() < chance) {ManaHandler.dispatchMana(player, 1, true);}
					val f = player.foodStats.foodLevel;
					if (player.health < player.maxHealth) & ((f < 18) & (f > 0)) {
						if (Math.random() < chance) {player.heal(1.0f);}
					}
				}
			}
		};
	//DISABLED, LivingKnockbackEvent isn't currently usable by ZenScript even though provided as an object
	//traitTerrestrialArmour.onKnockback =
	//	function(trait, armour, player, event) {
	//		if (isHighestSetPiece("terrestrial_armor", armour, player)) {
	//			val traitCount = traitSetCount(player, "terrestrial_armor");
	//			if (traitCount >= 4) {
	//				event.setStrength(0);
	//				return;
	//			}
	//			val newRatio as float = 1.0f - (0.25f * (traitCount as float));
	//			event.setStrength(event.getStrength() * newRatio);
	//		}
	//	};
	traitTerrestrialArmour.register();
	//----
//----

//Custom materials
	//Elementium
		//Core
		val liquidElementium = initMoltenMetal("elementium", 0xf66afd, 10, 800);
		liquidElementium.register();
		val matElementium = initMaterial("elementium", 0xe90081, false, true);
		matElementium.liquid = <liquid:elementium>;
		//Items
		matElementium.representativeItem = <item:botania:manaresource:7>.withDamage(7);
		matElementium.addItem(<item:botania:storage:2>.withDamage(2));
		matElementium.addItem(<item:botania:manaresource:7>.withDamage(7), 1296);
		matElementium.addItem(<item:botania:manaresource:19>.withDamage(19), 16);
		//Stats
		matElementium.addHeadMaterialStats(540, 7.0f, 6.0f, 3);
		matElementium.addHandleMaterialStats(1.25f, 150);
		matElementium.addExtraMaterialStats(60);
		matElementium.addBowMaterialStats(0.8f, 1.5f, 7.5f);
		matElementium.addCoreMaterialStats(10.0f, 18.0f);
		matElementium.addPlatesMaterialStats(0.5f, 6.0f, 5.0f);
		matElementium.addTrimMaterialStats(1.0f);
		//Traits TODO: homebrew traits
		matElementium.addMaterialTrait("mana", "head");
		matElementium.addMaterialTrait("pixielated", "head");
		matElementium.addMaterialTrait("mana", "handle");
		matElementium.addMaterialTrait("pixielated", "handle");
		matElementium.addMaterialTrait("mana", "extra");
		matElementium.addMaterialTrait("pixielated", "extra");
		matElementium.addMaterialTrait("mana", "bow");
		matElementium.addMaterialTrait("pixielated_armor", "core");
		matElementium.addMaterialTrait("mana_armor", "core");
		matElementium.addMaterialTrait("pixielated_armor", "plates");
		matElementium.addMaterialTrait("mana_armor", "plates");
		matElementium.addMaterialTrait("pixielated_armor", "trim");
		matElementium.addMaterialTrait("mana_armor", "trim");
		//Register
		matElementium.register();
	//----
	//Livingwood
		//Core
		val matLivingwood = initMaterial("livingwood", 0x560018, true, false);
		//Items
		matLivingwood.representativeItem = <item:botania:livingwood:0>.withDamage(0);
		matLivingwood.addItem(<item:botania:livingwood:0>.withDamage(0));
		matLivingwood.addItem(<item:botania:livingwood:5>.withDamage(5), 288);
		matLivingwood.addItem(<item:botania:manaresource:3>.withDamage(3), 288);
		//Stats
		matLivingwood.addHeadMaterialStats(50, 5.1f, 2.8f, 1);
		matLivingwood.addHandleMaterialStats(1.15f, 20);
		matLivingwood.addExtraMaterialStats(20);
		matLivingwood.addBowMaterialStats(1.1f, 1.1f, 2.0f);
		matLivingwood.addArrowShaftMaterialStats(1.0f, 6);
		//Traits
		matLivingwood.addMaterialTrait("solar", "head");
		matLivingwood.addMaterialTrait("ecological", "head");
		matLivingwood.addMaterialTrait("solar", "handle");
		matLivingwood.addMaterialTrait("ecological", "handle");
		matLivingwood.addMaterialTrait("solar", "extra");
		matLivingwood.addMaterialTrait("ecological", "extra");
		matLivingwood.addMaterialTrait("solar", "bow");
		matLivingwood.addMaterialTrait("ecological", "bow");
		matLivingwood.addMaterialTrait("solar", "shaft");
		matLivingwood.addMaterialTrait("ecological", "shaft");
		//Register
		matLivingwood.register();
	//----
	//Manasteel
		//Core
		val liquidManasteel = initMoltenMetal ("manasteel", 0x2494ff, 10, 681);
		liquidManasteel.register();
		val matManasteel = initMaterial("manasteel", 0x2494ff, false, true);
		matManasteel.liquid = <liquid:manasteel>;
		//Items
		matManasteel.representativeItem = <item:botania:manaresource:0>.withDamage(0);
		matManasteel.addItem(<item:botania:storage:0>.withDamage(0), 1296);
		matManasteel.addItem(<item:botania:manaresource:0>.withDamage(0));
		matManasteel.addItem(<item:botania:manaresource:17>.withDamage(17), 16);
		//Stats
		matManasteel.addHeadMaterialStats(540, 7.0f, 6.0f, 3);
		matManasteel.addHandleMaterialStats(1.25f, 150);
		matManasteel.addExtraMaterialStats(60);
		matManasteel.addBowMaterialStats(0.8f, 1.5f, 7.5f);
		matManasteel.addCoreMaterialStats(10.0f, 18.0f);
		matManasteel.addPlatesMaterialStats(0.5f, 6.0f, 5.0f);
		matManasteel.addTrimMaterialStats(1.0f);
		//Traits
		matManasteel.addMaterialTrait("mana", "head");
		matManasteel.addMaterialTrait("mana", "handle");
		matManasteel.addMaterialTrait("mana", "extra");
		matManasteel.addMaterialTrait("mana", "bow");
		matManasteel.addMaterialTrait("mana_armor", "core");
		matManasteel.addMaterialTrait("mana_armor", "plates");
		matManasteel.addMaterialTrait("mana_armor", "trim");
		//Register
		matManasteel.register();
	//----
	//Manastring (just bowstring)
		//Core
		val matManastring = initMaterial("manastring", 0xaff8ff, true, false);
		//Items
		matManastring.representativeItem = <item:botania:manaresource:16>.withDamage(16);
		matManastring.addItem(<item:botania:manaresource:16>.withDamage(16));
		//Stats
		matManastring.addBowStringMaterialStats(1.0f);
		//Traits
		matManastring.addMaterialTrait("mana", "bowstring");
		//Register
		matManastring.register();
	//----
	//Red string (just bowstring)
		//Core
		val matRedstring = initMaterial("redstring", 0xff0000, true, false);
		//Items
		matRedstring.representativeItem = <item:botania:manaresource:12>.withDamage(12);
		matRedstring.addItem(<item:botania:manaresource:12>.withDamage(12));
		//Stats
		matRedstring.addBowStringMaterialStats(1.2f);
		//Traits
		matRedstring.addMaterialTrait("mana", "bowstring");
		//Register
		matRedstring.register();
	//----
	//Terrasteel
		//Core
		val liquidTerrasteel = initMoltenMetal("terrasteel", Color.fromHex("00ff00").getIntColor(), 10, 760);
		liquidTerrasteel.register();
		val matTerrasteel = initMaterial("terrasteel", 0x00ff00, false, true);
		matTerrasteel.liquid = <liquid:terrasteel>;
		//Items
		matTerrasteel.representativeItem = <item:botania:manaresource:4>.withDamage(4);
		matTerrasteel.addItem(<item:botania:manaresource:4>.withDamage(4));
		matTerrasteel.addItem(<item:botania:storage:1>.withDamage(1), 1, 1296);
		matTerrasteel.addItem(<item:botania:manaresource:18>.withDamage(18), 1, 16);
		//Stats
		matTerrasteel.addHeadMaterialStats(1600, 9.0f, 9.0f, 5);
		matTerrasteel.addHandleMaterialStats(1.4f, 100);
		matTerrasteel.addExtraMaterialStats(100);
		matTerrasteel.addBowMaterialStats(0.55f, 2.0f, 11.0f);
		matTerrasteel.addProjectileMaterialStats();
		matTerrasteel.addCoreMaterialStats(20.0f, 20.0f);
		matTerrasteel.addPlatesMaterialStats(1.4f, 8.0f, 4.0f);
		matTerrasteel.addTrimMaterialStats(0.0f);
		//Traits
		matTerrasteel.addMaterialTrait("terrestrial", "head");
		matTerrasteel.addMaterialTrait("mana", "head");
		matTerrasteel.addMaterialTrait("terrestrial", "handle");
		matTerrasteel.addMaterialTrait("mana", "handle");
		matTerrasteel.addMaterialTrait("terrestrial", "extra");
		matTerrasteel.addMaterialTrait("mana", "extra");
		matTerrasteel.addMaterialTrait("terrestrial", "projectile");
		matTerrasteel.addMaterialTrait("mana", "projectile");
		matTerrasteel.addMaterialTrait("mana", "bow");
		matTerrasteel.addMaterialTrait("terrestrial_armor", "core");
		matTerrasteel.addMaterialTrait("mana_armor", "core");
		matTerrasteel.addMaterialTrait("mana_armor", "plates");
		matTerrasteel.addMaterialTrait("mana_armor", "trim");
		//Register
		matTerrasteel.register();
	//----
//----