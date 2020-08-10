#modloaded conarm manatweaks tconstruct

// Author: Nihiltres
// Integrates Botania's materials with Tinker's Construct and Construct's Armory
// CraftTweaker side: adds mana discounts and melting/casting support
// Version: 1.0

//Imports
	import crafttweaker.item.IItemStack;
	import crafttweaker.player.IPlayer;
	import mods.manatweaks.ManaDiscounter;
	import mods.manatweaks.ManaDiscountFunction;
	import mods.tconstruct.Casting;
	import mods.tconstruct.Melting;
//----

//Startup log-entry
	print("Initializing 'botania_materials_crafttweaker.zs'...");
//----

//Global utility functions
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
	//Discounter for all Construct's Armory armour
	global caDiscounter as ManaDiscountFunction =
		function (player as IPlayer, armour as IItemStack, tool as IItemStack) as float {
			if (hasModifier(armour, "terrestrial_armor")) {return 0.05f;}
			if (hasModifier(armour, "mana_armor")) {return 0.025f;}
			return 0.0f;
		} as ManaDiscountFunction;
//----
	
//Register mana discounts for Construct's Armory armour pieces
	val caPieces = [
		<conarm:boots>,
		<conarm:leggings>,
		<conarm:chestplate>,
		<conarm:helmet>
	] as IItemStack[];
	for item in caPieces {
		ManaDiscounter.addDiscount(item, caDiscounter);
	}
//----

//Adds basic melting and casting recipes for materials
	//Elementium
	Melting.addRecipe(<liquid:elementium> * 1296, <botania:storage:2>);
	Melting.addRecipe(<liquid:elementium> * 144, <botania:manaresource:7>);
	Melting.addRecipe(<liquid:elementium> * 16, <botania:manaresource:19>);
	Casting.addBasinRecipe(<botania:storage:2>, null, <liquid:elementium>, 1296);
	Casting.addTableRecipe(<botania:manaresource:7>, <tconstruct:cast_custom:0>, <liquid:elementium>, 144);
	Casting.addTableRecipe(<botania:manaresource:19>, <tconstruct:cast_custom:1>, <liquid:elementium>, 16);
	//Manasteel
	Melting.addRecipe(<liquid:manasteel> * 1296, <botania:storage:0>);
	Melting.addRecipe(<liquid:manasteel> * 144, <botania:manaresource:0>);
	Melting.addRecipe(<liquid:manasteel> * 16, <botania:manaresource:17>);
	Casting.addBasinRecipe(<botania:storage:0>, null, <liquid:manasteel>, 1296);
	Casting.addTableRecipe(<botania:manaresource:0>, <tconstruct:cast_custom:0>, <liquid:manasteel>, 144);
	Casting.addTableRecipe(<botania:manaresource:17>, <tconstruct:cast_custom:1>, <liquid:manasteel>, 16);
	//Terrasteel
	Melting.addRecipe(<liquid:terrasteel> * 1296, <botania:storage:1>);
	Melting.addRecipe(<liquid:terrasteel> * 144, <botania:manaresource:4>);
	Melting.addRecipe(<liquid:terrasteel> * 16, <botania:manaresource:18>);
	Casting.addBasinRecipe(<botania:storage:1>, null, <liquid:terrasteel>, 1296);
	Casting.addTableRecipe(<botania:manaresource:4>, <tconstruct:cast_custom:0>, <liquid:terrasteel>, 144);
	Casting.addTableRecipe(<botania:manaresource:18>, <tconstruct:cast_custom:1>, <liquid:terrasteel>, 16);
//----