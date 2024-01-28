import crafttweaker.item.IItemStack;

//// handheld things
recipes.remove(<geolosys:pro_pick>);
recipes.addShaped(<geolosys:pro_pick>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
				        [null, <tconstruct:binding>.withTag({Material: "wood"}), null],
					[null, <tconstruct:tool_rod>.withTag({Material: "wood"}), null]]);
recipes.remove(<realistictorches:matchbox>);
recipes.addShaped(<realistictorches:matchbox>, [[null, null, null],
					        [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
						[<ore:slabWood>, <minecraft:flint>, <ore:slabWood>]]);

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
// hooked on hooks worked for me
mods.jei.JEI.removeAndHide(<hooked:microcrafting>);
// rope length
recipes.remove(<hooked:microcrafting:1>);
recipes.addShaped(<hooked:microcrafting:1> * 2, [[null, null, <tconstruct:bow_string>.withTag({Material: "string"})],
					         [null, <tconstruct:bow_string>.withTag({Material: "string"}), null],
					         [<tconstruct:bow_string>.withTag({Material: "string"}), null, null]]);
// chain link
recipes.remove(<hooked:microcrafting:2>);
recipes.addShaped(<hooked:microcrafting:2> * 6, [[null, <immersiveengineering:material:1>, <immersiveengineering:material:1>],
					         [<immersiveengineering:material:1>, <tconstruct:tough_binding>.withTag({Material: "iron"}), <immersiveengineering:material:1>],
					         [<immersiveengineering:material:1>, <immersiveengineering:material:1>, null]]);
// chain length
recipes.remove(<hooked:microcrafting:3>);
recipes.addShaped(<hooked:microcrafting:3>, [[null, null, <hooked:microcrafting:2>],
					     [null, <hooked:microcrafting:2>, null],
					     [<hooked:microcrafting:2>, null, null]]);
// t1 - wood
recipes.remove(<hooked:hook>);
recipes.addShaped(<hooked:hook>, [[<mysticalagriculture:crafting:24>, <tconstruct:binding>.withTag({Material: "wood"}), <tconstruct:pick_head>.withTag({Material: "stone"})],
				  [<tconstruct:tool_rod>.withTag({Material: "wood"}), <hooked:microcrafting:1>, <tconstruct:binding>.withTag({Material: "wood"})],
				  [<hooked:microcrafting:1>, <tconstruct:tool_rod>.withTag({Material: "wood"}), <mysticalagriculture:crafting:24>]]);
// t2 - iron
recipes.remove(<hooked:hook:1>);
recipes.addShaped(<hooked:hook:1>, [[<tconstruct:tool_rod>.withTag({Material: "treatedwood"}), <mysticalagriculture:crafting:38>, <tconstruct:pick_head>.withTag({Material: "iron"})],
				    [null, <hooked:microcrafting:3>, <mysticalagriculture:crafting:38>],
				    [<hooked:microcrafting:3>, null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"})]]);
// t3 - diamond
recipes.remove(<hooked:hook:2>);
recipes.addShaped(<hooked:hook:2>, [[<tconstruct:tool_rod>.withTag({Material: "iron"}), <botania:manaresource:2>, <botania:manaresource:2>],
				    [null, <hooked:hook:1>, <botania:manaresource:2>],
				    [<additionallanterns:diamond_chain>, null, <tconstruct:tool_rod>.withTag({Material: "iron"})]]);
// t4 - fancy
<hooked:hook:3>.displayName = "Fancy Hook";
recipes.remove(<hooked:hook:3>);
recipes.addShaped(<hooked:hook:3>, [[<mysticalagriculture:crafting:35>, <actuallyadditions:item_crystal:2>, <botania:manaresource:1>],
				    [null, <hooked:hook:2>, <actuallyadditions:item_crystal:2>],
				    [<projectred-core:resource_item:103>, null, <mysticalagriculture:crafting:35>]]);
// t5 - fanciest
<hooked:hook:4>.displayName = "Fanciest Hook";
recipes.remove(<hooked:hook:4>);
recipes.addShaped(<hooked:hook:4>, [[<botania:manaresource:4>, <actuallyadditions:item_crystal_empowered:2>, <botania:manaresource:1>],
				    [null, <hooked:hook:3>, <actuallyadditions:item_crystal_empowered:2>],
				    [<mysticalagriculture:crafting:37>, null, <botania:manaresource:4>]]);

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

//// stationary things
recipes.remove(<cyclicmagic:block_anvil>);
recipes.addShaped(<cyclicmagic:block_anvil>, [[<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>],
					      [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:3>, null],
					      [<minecraft:quartz_block>, <mekanism:basicblock:8>, <minecraft:quartz_block>]]);
recipes.remove(<cyclicmagic:void_anvil>);
recipes.addShaped(<cyclicmagic:void_anvil>, [[<mysticalagriculture:crafting:38>, <actuallyadditions:item_crystal:2>, <mysticalagriculture:crafting:38>],
					     [<vehicle:wrench>.reuse(), <actuallyadditions:item_crystal:3>, null],
					     [<minecraft:quartz_block>, <mekanism:basicblock:8>, <minecraft:quartz_block>]]);
// ie charging station
recipes.remove(<immersiveengineering:metal_device1:5>);
recipes.addShaped(<immersiveengineering:metal_device1:5>, [[<projectred-core:resource_item:103>, <immersiveengineering:connector>, <mysticalagriculture:crafting:33>],
							   [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
							   [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>]]);
