import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

//// botania
// magic relies upon essence
recipes.remove(<botania:lexicon>);
recipes.addShaped(<botania:lexicon>, [[null, <ore:plant>, null],
				      [<mysticalagriculture:crafting>, <minecraft:book>, <mysticalagriculture:crafting>],
				      [null, <botania:dye:*>, null]]);
// do not allow use of any dye
recipes.remove(<botania:fertilizer>);
recipes.addShaped(<botania:fertilizer>, [[null, <botania:petal:*>, null],
					 [<mysticalagriculture:crafting>, <minecraft:dye:15>, <mysticalagriculture:crafting>],
					 [null, <botania:petal:*>, null]]);
// parts
recipes.remove(<botania:manaresource:22>);
recipes.addShaped(<botania:manaresource:22>, [[<botania:manaresource:16>, null, <botania:manaresource:16>],
					      [null, <mysticalagriculture:crafting:23>, null],
					      [<botania:manaresource:16>, null, <botania:manaresource:16>]]);
// block equipment
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>, [[<tconstruct:large_plate>.withTag({Material: "stone"}), <botania:petal:*>, <tconstruct:large_plate>],
				    [null, <actuallyadditions:block_misc:4>, null],
				    [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);

recipes.remove(<botania:opencrate>);
recipes.addShaped(<botania:opencrate>, [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
				        [<botania:livingwood:1>, null, <botania:livingwood:1>],
					[<botania:livingwood:1>, null, <botania:livingwood:1>]]);
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>, [[<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>],
				       [<tconstruct:clear_glass>, <actuallyadditions:block_misc:4>, <botania:livingwood:1>],
				       [<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>]]);
recipes.remove(<botania:lens>);
recipes.addShaped(<botania:lens>, [[null, <botania:manaresource>, null],
				   [<botania:manaresource>, <tconstruct:clear_glass>, <botania:manaresource>],
				   [null, <botania:manaresource>, null]]);
recipes.remove(<botania:rfgenerator>);
recipes.addShaped(<botania:rfgenerator>, [[<botania:livingrock>, <mekanism:compressedredstone>, <botania:livingrock>],
					  [<immersiveengineering:metal_decoration0:6>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal_decoration0:6>],
					  [<botania:livingrock>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <botania:livingrock>]]);
// velocity lens
recipes.remove(<botania:lens:1>);
recipes.addShaped(<botania:lens:1>, [[null, <botania:rune:3>, null],
				     [<mysticalagriculture:crafting:24>, <botania:lens>, <mysticalagriculture:crafting:24>],
				     [null, null, null]]);
// potency lens
recipes.remove(<botania:lens:2>);
recipes.addShaped(<botania:lens:2>, [[null, <botania:rune:1>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <storagedrawers:upgrade_template>, null]]);
// resistance lens
recipes.remove(<botania:lens:3>);
recipes.addShaped(<botania:lens:3>, [[null, <botania:rune:2>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <conarm:armor_trim>.withTag({Material: "manasteel"}), null]]);
// efficiency lens
recipes.remove(<botania:lens:4>);
recipes.addShaped(<botania:lens:4>, [[null, <botania:rune>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <actuallyadditions:item_crystal:5>, null]]);
// bounce lens
recipes.remove(<botania:lens:5>);
recipes.addShaped(<botania:lens:5>, [[null, <botania:rune:5>, null],
				     [<cfm:inflatable_castle:*>, <botania:lens>, <cfm:inflatable_castle:*>],
				     [null, <cfm:inflatable_castle:*>, null]]);
// gravity lens
recipes.remove(<botania:lens:6>);
recipes.addShaped(<botania:lens:6>, [[null, <botania:rune:7>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <tconstruct:large_plate>.withTag({Material: "steel"}), null]]);
// bore lens
recipes.remove(<botania:lens:7>);
recipes.addShaped(<botania:lens:7>, [[null, <tconstruct:axe_head>.withTag({Material: "manasteel"}), null],
				     [<tconstruct:pick_head>.withTag({Material: "manasteel"}), <botania:lens>, <tconstruct:shovel_head>.withTag({Material: "manasteel"})],
				     [null, <botania:rune:2>, null]]);
// damaging lens
recipes.remove(<botania:lens:8>);
recipes.addShaped(<botania:lens:8>, [[null, <botania:rune:13>, null],
				     [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				     [null, <tconstruct:scythe_head>.withTag({Material: "manasteel"}), null]]);
// phantom lens
recipes.remove(<botania:lens:9>);
recipes.addShaped(<botania:lens:9>, [[null, <botania:platform>, null],
				     [<botania:platform>, <botania:lens>, <botania:platform>],
				     [null, <mysticalagriculture:storage>, null]]);
// magnetic lens
recipes.remove(<botania:lens:10>);
recipes.addShaped(<botania:lens:10>, [[null, <botania:rune:2>, null],
				      [<tconstruct:pan_head>.withTag({Material: "iron"}), <botania:lens>, <tconstruct:pan_head>.withTag({Material: "cobalt"})],
				      [null, <immersiveengineering:metal:34>, null]]);
// entropic lens
recipes.remove(<botania:lens:11>);
recipes.addShaped(<botania:lens:11>, [[null, <botania:rune:14>, null],
				      [<minecraft:gunpowder>, <botania:lens>, <minecraft:gunpowder>],
				      [null, <mysticalagriculture:coal>, null]]);
// influence lens
recipes.remove(<botania:lens:12>);
recipes.addShaped(<botania:lens:12>, [[<mysticalagriculture:soul_glass>, <botania:rune:3>, <mysticalagriculture:soul_glass>],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [null, <immersiveengineering:material:5>, null]]);

// weight lens
recipes.remove(<botania:lens:13>);
recipes.addShaped(<botania:lens:13>, [[null, <botania:rune>, null],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [<tconstruct:large_plate>.withTag({Material: "steel"}), null, <tconstruct:large_plate>]]);
// paint lens
recipes.remove(<botania:lens:14>);
recipes.addShaped(<botania:lens:14>, [[null, <botania:rune:11>, null],
				      [<minecraft:wool:*>, <botania:lens>, <minecraft:wool:*>],
				      [null, <vehicle:spray_can:*>, null]]);
// kindling lens
recipes.remove(<botania:lens:15>);
recipes.addShaped(<botania:lens:15>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				      [null, <minecraft:fire_charge>, null]]);
// force lens
recipes.remove(<botania:lens:16>);
recipes.addShaped(<botania:lens:16>, [[null, <botania:rune:8>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [null, <minecraft:piston>, null]]);
// flash lens
recipes.remove(<botania:lens:17>);
recipes.addShaped(<botania:lens:17>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [<mekanism:basicblock:4>, <mysticalagriculture:crafting:33>, <mekanism:basicblock:4>]]);
// warp lens
recipes.remove(<botania:lens:18>);
recipes.addShaped(<botania:lens:18>, [[null, <botania:rune:3>, null],
				      [<botania:manaresource:8>, <botania:lens>, <botania:manaresource:8>],
				      [<mysticalagriculture:crafting:35>, <mekanism:teleportationcore>, <mysticalagriculture:crafting:35>]]);
// redirective lens
recipes.remove(<botania:lens:19>);
recipes.addShaped(<botania:lens:19>, [[null, <botania:rune:5>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [<botania:livingwood:1>, <cfm:mirror>, <botania:livingwood:1>]]);
// firework lens
recipes.remove(<botania:lens:20>);
recipes.addShaped(<botania:lens:20>, [[null, <botania:rune:1>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [null, <actuallyadditions:block_firework_box>, null]]);
// flare lens
recipes.remove(<botania:lens:21>);
recipes.addShaped(<botania:lens:21>, [[<botania:elfglass>, <botania:rune:15>, <botania:elfglass>],
				      [null, <botania:lens>, null],
				      [null, <betterrecords:lasercluster>, null]]);
// meessenger lens
recipes.remove(<botania:lens:22>);
recipes.addShaped(<botania:lens:22>, [[null, <botania:rune:3>, null],
				      [<minecraft:paper>, <botania:lens>, <minecraft:paper>],
				      [<minecraft:paper>, <mysticalagriculture:crafting:33>, <minecraft:paper>]]);
// tripwire lens
recipes.remove(<botania:lens:23>);
recipes.addShaped(<botania:lens:23>, [[null, <botania:rune:13>, null],
 				      [<mysticalagriculture:crafting:34>, <botania:lens>, <minecraft:tripwire_hook>],
				      [null, <botania:manaresource:7>, null]]);
// other
recipes.remove(<botania:managun>);
recipes.addShaped(<botania:managun>, [[<botania:manaresource:2>, <botania:manaresource>, null],
				      [<immersiveengineering:material:8>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <immersiveengineering:material:14>],
				      [<immersiveengineering:material:13>, null, null]]);
recipes.remove(<botania:unholycloak>);
recipes.addShaped(<botania:unholycloak>, [[<botania:manaresource:12>, <minecraft:wool:15>, <botania:manaresource:12>],
					  [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					  [<minecraft:wool:15>, <mysticalagriculture:crafting:38>, <minecraft:wool:15>]]);
recipes.remove(<botania:balancecloak>);
recipes.addShaped(<botania:balancecloak>, [[<botania:manaresource:16>, <minecraft:wool:8>, <botania:manaresource:16>],
					   [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					   [<minecraft:wool:8>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:wool:8>]]);
recipes.remove(<botania:holycloak>);
recipes.addShaped(<botania:holycloak>, [[<tconstruct:bow_string>, <minecraft:wool>, <tconstruct:bow_string>],
				        [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					[<minecraft:wool>, <actuallyadditions:item_crystal_empowered:3>, <minecraft:wool>]]);
recipes.remove(<botania:invisibilitycloak>);
recipes.addShaped(<botania:invisibilitycloak>, [[<botania:managlass>, <actuallyadditions:item_crystal_empowered:3>, <botania:managlass>],
					        [<botania:manaresource:22>, <botania:manaresource:1>, <botania:manaresource:22>],
						[<botania:managlass>, <mysticalagriculture:crafting:38>, <botania:managlass>]]);

// pure daisy tweaks
mods.botania.PureDaisy.addRecipe(<minecraft:sand>, <minecraft:dirt>, 600);
