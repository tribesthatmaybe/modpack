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
// core sample dril
recipes.remove(<immersiveengineering:metal_device1:7>);
recipes.addShaped(<immersiveengineering:metal_device1:7>, [[<immersiveengineering:metal_decoration1:1>, <vehicle:small_engine>, <immersiveengineering:metal_decoration1:1>],
							   [<immersiveengineering:metal_decoration1:1>, <engineersdecor:thin_steel_pole>, <immersiveengineering:metal_decoration1:1>],
							   [<actuallyadditions:item_battery>, <engineersdecor:thin_steel_pole>, <immersiveengineering:metal_decoration0:4>]]);
// sprinkler
recipes.remove(<cyclicmagic:sprinkler>);
recipes.addShaped(<cyclicmagic:sprinkler>, [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
					    [null, <projectred-core:resource_item:103>, null],
					    [<minecraft:bone_block>, <actuallyadditions:block_misc:4>, <minecraft:bone_block>]]);
// rope coil
recipes.remove(<quark:rope>);
recipes.addShaped(<quark:rope> * 4, [[null, <hooked:microcrafting:1>, null],
			             [<hooked:microcrafting:1>, null, <hooked:microcrafting:1>],
				     [null, <hooked:microcrafting:1>, null]]);
recipes.remove(<actuallyadditions:block_firework_box>);
recipes.addShaped(<actuallyadditions:block_firework_box>, [[<mysticalagriculture:crafting:2>, <botania:manaresource>, <mysticalagriculture:crafting:2>],
							   [<mekanism:enrichedalloy>, <actuallyadditions:block_misc:9>, <mekanism:enrichedalloy>],
							   [<actuallyadditions:item_crystal:5>, <mekanism:controlcircuit>, <actuallyadditions:item_crystal:5>]]);
//// exchangers
recipes.remove(<exchangers:ie_exchanger_core_tier1>);
recipes.addShaped(<exchangers:ie_exchanger_core_tier1>, [[<immersiveengineering:material:8>, <mekanism:enrichedalloy>, <immersiveengineering:material:8>],
							 [<mekanism:enrichedalloy>, <actuallyadditions:item_crystal:5>, <mekanism:enrichedalloy>],
							 [<immersiveengineering:material:8>, <mekanism:enrichedalloy>, <immersiveengineering:material:8>]]);
recipes.remove(<exchangers:ie_exchanger_core_tier2>);
recipes.addShaped(<exchangers:ie_exchanger_core_tier2>, [[<immersiveengineering:material:9>, <actuallyadditions:item_crystal_empowered:5>, <immersiveengineering:material:9>],
							 [<mekanism:reinforcedalloy>, <exchangers:ie_exchanger_core_tier1>, <mekanism:reinforcedalloy>],
							 [<immersiveengineering:material:9>, <actuallyadditions:item_crystal_empowered:5>, <immersiveengineering:material:9>]]);
recipes.remove(<exchangers:ie_exchanger_core_tier3>);
recipes.addShaped(<exchangers:ie_exchanger_core_tier3>, [[<mekanism:atomicalloy>, <botania:manaresource:4>, <mekanism:atomicalloy>],
							 [<immersiveengineering:metal_decoration0:3>, <exchangers:ie_exchanger_core_tier2>, <immersiveengineering:metal_decoration0:3>],
							 [<mekanism:atomicalloy>, <botania:manaresource:4>, <mekanism:atomicalloy>]]);
recipes.remove(<exchangers:lv_exchanger>);
recipes.addShaped(<exchangers:lv_exchanger>, [[<mekanism:plasticblock:14>, <projectred-core:resource_item:103>, <mekanism:plasticblock:14>],
					      [<projectred-core:resource_item:103>, <exchangers:ie_exchanger_core_tier1>, <opencomputers:material:14>],
					      [<mekanism:plasticblock:14>, <actuallyadditions:block_misc:4>, <mekanism:plasticblock:14>]]);
recipes.remove(<exchangers:mv_exchanger>);
recipes.addShaped(<exchangers:mv_exchanger>, [[<mekanism:plasticblock:11>, <projectred-core:resource_item:104>, <mekanism:plasticblock:11>],
					      [<projectred-core:resource_item:104>, <exchangers:ie_exchanger_core_tier2>, <opencomputers:material:14>],
					      [<mekanism:plasticblock:11>, <actuallyadditions:block_misc:9>, <mekanism:plasticblock:11>]]);
recipes.remove(<exchangers:hv_exchanger>);
recipes.addShaped(<exchangers:hv_exchanger>, [[<mekanism:plasticblock:2>, <actuallyadditions:item_crystal_empowered:1>, <mekanism:plasticblock:2>],
					      [<actuallyadditions:item_crystal_empowered:1>, <exchangers:ie_exchanger_core_tier3>, <opencomputers:material:14>],
					      [<mekanism:plasticblock:2>, <mekanism:basicblock:8>, <mekanism:plasticblock:2>]]);

// sweet tunez
recipes.remove(<betterrecords:radio>);
recipes.addShaped(<betterrecords:radio>, [[null, <opencomputers:material:13>, null],
					  [<immersiveengineering:treated_wood>, <actuallyadditions:item_misc:7>, <immersiveengineering:treated_wood>],
					  [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:4>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:recordplayer>);
recipes.addShaped(<betterrecords:recordplayer>, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
						 [<minecraft:wool:15>, <actuallyadditions:item_misc:7>, <minecraft:wool:15>],
						 [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:4>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:frequencycrystal>);
recipes.addShaped(<betterrecords:frequencycrystal>, [[null, <projectred-core:resource_item:103>, null],
						     [<projectred-core:resource_item:104>, <opencomputers:material:13>, <projectred-core:resource_item:104>],
						     [null, <projectred-core:resource_item:103>, null]]);
recipes.remove(<betterrecords:record>);
recipes.addShaped(<betterrecords:record>, [[null, <actuallyadditions:item_crystal:3>, null],
					   [<actuallyadditions:item_crystal:3>, <mekanism:enrichedalloy>, <actuallyadditions:item_crystal:3>],
					   [null, <actuallyadditions:item_crystal:3>, null]]);
recipes.remove(<betterrecords:recordetcher>);
recipes.addShaped(<betterrecords:recordetcher>, [[<immersiveengineering:material:3>, <immersiveengineering:metal:37>, <immersiveengineering:material:3>],
						 [<immersiveengineering:treated_wood>, <opencomputers:material:13>, <immersiveengineering:treated_wood>],
						 [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:9>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:frequencytuner>);
recipes.addShaped(<betterrecords:frequencytuner>, [[null, <immersiveposts:metal_rods:6>, null],
						   [<immersiveengineering:metal:2>, <opencomputers:material:13>, <immersiveengineering:metal:2>],
						   [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:9>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:speaker>);
recipes.remove(<betterrecords:speaker:1>);
recipes.remove(<betterrecords:speaker:2>);
recipes.addShaped(<betterrecords:speaker:2>, [[null, <immersiveengineering:treated_wood>, <minecraft:wool:15>],
					      [null, <actuallyadditions:item_misc:8>, <minecraft:wool:15>],
					      [null, <actuallyadditions:block_misc:9>, <minecraft:wool:15>]]);
recipes.addShaped(<betterrecords:speaker:1>, [[null, <immersiveengineering:treated_wood>, <minecraft:wool:15>],
					      [null, <actuallyadditions:item_misc:8>, <minecraft:wool:15>],
					      [null, <actuallyadditions:block_misc:4>, <minecraft:wool:15>]]);
recipes.addShaped(<betterrecords:speaker>, [[null, <immersiveengineering:treated_wood>, <minecraft:wool:15>],
					    [null, <actuallyadditions:item_misc:7>, <minecraft:wool:15>],
					    [null, <actuallyadditions:block_misc:4>, <minecraft:wool:15>]]);
recipes.remove(<betterrecords:laser>);
recipes.addShaped(<betterrecords:laser>, [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
					  [<mekanism:controlcircuit>, <realistictorches:glowstone_crystal>, <tconstruct:clear_glass>],
					  [<immersiveengineering:material:8>, <actuallyadditions:block_misc:4>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:strobelight>);
recipes.addShaped(<betterrecords:strobelight>, [[null, null, null],
					        [<immersiveengineering:treated_wood>, <projectred-illumination:lamp:16>, <immersiveengineering:treated_wood>],
						[<projectred-core:resource_item:104>, <actuallyadditions:block_misc:4>, <projectred-core:resource_item:104>]]);
recipes.remove(<betterrecords:lasercluster>);
recipes.addShaped(<betterrecords:lasercluster>, [[<tconstruct:clear_glass>, <betterrecords:laser>, <tconstruct:clear_glass>],
						 [<betterrecords:laser>, <mekanism:controlcircuit:1>, <betterrecords:laser>],
						 [<immersiveengineering:treated_wood>, <actuallyadditions:block_misc:4>, <immersiveengineering:treated_wood>]]);
recipes.remove(<betterrecords:wirecutters>);
recipes.addShaped(<betterrecords:wirecutters>, [[null, null, null],
					        [null, <immersiveengineering:tool:1>, null],
						[null, <mekanism:plasticblock>, null]]);
recipes.remove(<betterrecords:wire>);
recipes.addShaped(<betterrecords:wire> * 4, [[<mekanism:plasticblock>, <immersiveengineering:material:20>, <mekanism:plasticblock>],
					     [<immersiveengineering:material:20>, <actuallyadditions:item_crystal:1>, <immersiveengineering:material:20>],
					     [<mekanism:plasticblock>, <immersiveengineering:material:20>, <mekanism:plasticblock>]]);

// errata
recipes.remove(<mysticalagriculture:master_infusion_crystal>);
recipes.addShaped(<mysticalagriculture:master_infusion_crystal>, [[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:4>],
								  [<mysticalagriculture:crafting:5>, <botania:manaresource:2>, <mysticalagriculture:crafting:5>],
								  [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:5>, <mysticalagriculture:crafting:4>]]);
