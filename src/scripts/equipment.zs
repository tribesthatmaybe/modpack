import crafttweaker.item.IItemStack;

recipes.remove(<mekanism:jetpack>);
recipes.addShaped(<mekanism:jetpack>, [[<mekanism:plasticblock:14>, <mekanism:controlcircuit:2>, <mekanism:plasticblock:14>],
				       [<tconstruct:large_plate>.withTag({Material: "electrum"}), <mekanism:gastank>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
				       [<mekanism:atomicalloy>, <mekanism:transmitter:2>, <mekanism:atomicalloy>]]);
recipes.remove(<mekanism:armoredjetpack>);
recipes.addShaped(<mekanism:armoredjetpack>.withTag({}), [[<conarm:armor_trim>.withTag({Material: "steel"}), <actuallyadditions:item_crystal_empowered:2>, <conarm:armor_trim>.withTag({Material: "steel"})],
					                  [<mekanism:compressedobsidian>, <conarm:chest_core>.withTag({Material: "steel"}), <mekanism:compressedobsidian>],
					                  [null, <mekanism:jetpack>.withTag({}), null]]);
// free runners
recipes.remove(<mekanism:freerunners>);
recipes.addShaped(<mekanism:freerunners>, [[<mekanism:controlcircuit>, <actuallyadditions:item_battery_double>, <mekanism:controlcircuit>],
					   [<mekanism:compresseddiamond>, <conarm:leggings_core>.withTag({Material: "steel"}), <mekanism:compresseddiamond>],
					   [<actuallyadditions:item_crystal_empowered>, <conarm:boots_core>.withTag({Material: "steel"}), <actuallyadditions:item_crystal_empowered>]]);
// scuba kit
recipes.remove(<mekanism:gasmask>);
recipes.addShaped(<mekanism:gasmask>, [[<immersiveengineering:metal:38>, <mekanism:plasticblock:11>, <immersiveengineering:metal:38>],
				       [<immersiveengineering:material:9>, <mekanism:controlcircuit>, <mekanism:basicblock:10>],
				       [<mekanism:transmitter:2>, <mekanism:plasticblock:11>, <mekanism:plasticblock:11>]]);
recipes.remove(<mekanism:scubatank>);
recipes.addShaped(<mekanism:scubatank>, [[<immersiveengineering:metal:38>, <mekanism:gastank>, <immersiveengineering:metal:38>],
					 [<mekanism:compressedobsidian>, <mekanism:controlcircuit>, <mekanism:compressedobsidian>],
					 [<mekanism:plasticblock:11>, <actuallyadditions:item_crystal_empowered:5>, <mekanism:plasticblock:11>]]);

// fire extinguisher
recipes.remove(<cyclicmagic:fire_killer>);
recipes.addShaped(<cyclicmagic:fire_killer>, [[<immersiveengineering:material:13>, <immersiveengineering:metal_device1:6>, null],
					      [<immersiveengineering:metal:39>, <mysticalagriculture:water_essence>, null],
					      [<immersiveengineering:metal:39>, <mysticalagriculture:water_essence>, null]]);
// mekanism tweaker
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator>, [[null, <actuallyadditions:item_crystal:1>, null],
					    [<mekanism:enrichedalloy>, <actuallyadditions:item_battery>, null],
					    [<immersiveengineering:metal:31>, <opencomputers:material:7>, null]]);
// more aesthetic builders wands
recipes.remove(<betterbuilderswands:wandstone>);
recipes.remove(<betterbuilderswands:wandiron>);
recipes.remove(<betterbuilderswands:wanddiamond>);
recipes.addShaped(<betterbuilderswands:wandstone>, [[null, <mysticalagriculture:crafting:38>, <tconstruct:binding>.withTag({Material:"obsidian"})],
						      [null, <tconstruct:tool_rod>.withTag({Material:"livingwood"}), <botania:livingrock>],
						      [<mysticalagriculture:crafting:22>, null, null]]);
recipes.addShaped(<betterbuilderswands:wandiron>, [[null, <mysticalagriculture:crafting:38>, <tconstruct:binding>.withTag({Material:"steel"})],
						      [null, <tconstruct:tool_rod>.withTag({Material:"livingwood"}), <tconstruct:large_plate>.withTag({Material:"iron"})],
						      [<mysticalagriculture:crafting:22>, null, null]]);
recipes.addShaped(<betterbuilderswands:wanddiamond>, [[null, <mysticalagriculture:crafting:38>, <tconstruct:binding>.withTag({Material:"terrasteel"})],
						      [null, <tconstruct:tool_rod>.withTag({Material:"livingwood"}), <mekanism:compresseddiamond>],
						      [<mysticalagriculture:crafting:22>, null, null]]);
// crayon
recipes.remove(<cyclicmagic:sign_editor>);
recipes.addShaped(<cyclicmagic:sign_editor>, [[null, <tconstruct:tough_binding>.withTag({Material: "paper"}), <ore:dye>],
					      [<ore:dye>, <tconstruct:binding>.withTag({Material: "wood"}), <tconstruct:tough_binding>.withTag({Material: "paper"})],
					      [<ore:dye>, <ore:dye>, null]]);
// assorted tools
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped(<mekanism:atomicdisassembler>, [[<immersiveengineering:material:9>, <actuallyadditions:item_crystal_empowered:2>, <immersiveengineering:material:9>],
						  [<mekanism:atomicalloy>, <mekanism:controlcircuit:2>, <mekanism:atomicalloy>],
						  [<mekanism:compressedobsidian>, <actuallyadditions:item_battery_double>, <mekanism:compressedobsidian>]]);
recipes.remove(<mekanism:networkreader>);
recipes.addShaped(<mekanism:networkreader>, [[<mekanism:ingot:1>, <rsgauges:flatgauge1>, <mekanism:ingot:1>],
					     [<projectred-core:resource_item:103>, <actuallyadditions:item_battery>, <projectred-core:resource_item:104>],
					     [<immersiveengineering:metal:31>, <mekanism:ingot:1>, <immersiveengineering:metal:31>]]);
recipes.remove(<projectred-core:multimeter>);
recipes.addShaped(<projectred-core:multimeter>, [[<projectred-core:resource_item:103>, <rsgauges:flatgauge1>, <projectred-core:resource_item:103>],
						 [<mekanism:plasticblock>, <actuallyadditions:item_battery>, <mekanism:plasticblock>],
						 [<immersiveengineering:metal:31>, <immersiveengineering:metal:31>, <immersiveengineering:metal:31>]]);
recipes.remove(<projectred-core:screwdriver>);
recipes.addShaped(<projectred-core:screwdriver>, [[null, null, <immersiveengineering:material:1>],
						  [null, <immersiveengineering:material:1>, null],
						  [<mekanism:plasticblock:4>, null, null]]);
// backpacks tho
recipes.remove(<simplybackpacks:uncommonbackpack>);
recipes.addShaped(<simplybackpacks:uncommonbackpack>, [[<minecraft:gold_ingot>, null, <minecraft:gold_ingot>],
						       [<tconstruct:binding>.withTag({Material: "iron"}), <simplybackpacks:commonbackpack>, <tconstruct:binding>.withTag({Material: "iron"})],
						       [<conarm:armor_trim>.withTag({Material: "wood"}), <ironchest:wood_copper_chest_upgrade>, <conarm:armor_trim>.withTag({Material: "wood"})]]);
recipes.remove(<simplybackpacks:rarebackpack>);
recipes.addShaped(<simplybackpacks:rarebackpack>, [[<actuallyadditions:item_crystal:2>, null, <actuallyadditions:item_crystal:2>],
						   [<tconstruct:tough_binding>.withTag({Material: "treatedwood"}), <simplybackpacks:uncommonbackpack>, <tconstruct:tough_binding>.withTag({Material: "treatedwood"})],
						   [<conarm:armor_trim>.withTag({Material: "iron"}), <ironchest:silver_gold_shulker_upgrade>, <conarm:armor_trim>.withTag({Material: "iron"})]]);
recipes.remove(<simplybackpacks:epicbackpack>);
recipes.addShaped(<simplybackpacks:epicbackpack>, [[<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
						   [<tconstruct:tough_binding>.withTag({Material: "manasteel"}), <simplybackpacks:rarebackpack>, <tconstruct:tough_binding>.withTag({Material: "manasteel"})],
						   [<immersiveengineering:material:5>, <ironchest:gold_diamond_shulker_upgrade>, <immersiveengineering:material:5>]]);
// fire is fun
recipes.remove(<mekanism:flamethrower>);
recipes.addShaped(<mekanism:flamethrower>, [[<railcraft:plate:2>, <railcraft:plate:2>, <mekanism:compressedobsidian>],
					    [<tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:gastank>, <immersiveengineering:toolupgrade:7>],
					    [<immersiveengineering:material:13>, <mekanism:controlcircuit:2>, <mekanism:compressedobsidian>]]);
