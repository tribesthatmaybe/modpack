import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//// simplify chests
// TODO: railcraft chest split / recovery recipe?
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
				      [<ore:plankWood>, null, <ore:plankWood>],
				      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
// fancy chests
mods.jei.JEI.removeAndHide(<ironchest:iron_chest:7>, false);
recipes.remove(<ironchest:iron_chest:3>); // copper chest / box of not drugs
recipes.addShaped(<ironchest:iron_chest:3>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "wood"})],
					     [<mekanism:ingot:5>, <minecraft:chest>, <mekanism:ingot:5>],
					     [<mekanism:ingot:5>, <actuallyadditions:block_misc:4>, <mekanism:ingot:5>]]);

recipes.remove(<ironchest:wood_copper_chest_upgrade>);
recipes.addShaped(<ironchest:wood_copper_chest_upgrade>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "wood"})],
					     [<mekanism:ingot:5>, <storagedrawers:upgrade_template>, <mekanism:ingot:5>],
					     [<mekanism:ingot:5>, <actuallyadditions:block_misc:4>, <mekanism:ingot:5>]]);
recipes.remove(<ironchest:iron_chest>); // iron chest / janky bin
recipes.addShaped(<ironchest:iron_chest>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "wood"})],
					   [<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>],
					   [<minecraft:iron_ingot>, <actuallyadditions:block_misc:9>, <minecraft:iron_ingot>]]);
recipes.remove(<ironchest:wood_iron_chest_upgrade>);
recipes.remove(<ironchest:copper_iron_chest_upgrade>);
recipes.addShaped(<ironchest:copper_iron_chest_upgrade>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "wood"})],
							  [<minecraft:iron_ingot>, <storagedrawers:upgrade_storage>, <minecraft:iron_ingot>],
							  [<minecraft:iron_ingot>, <actuallyadditions:block_misc:9>, <minecraft:iron_ingot>]]);
recipes.addShaped(<ironchest:wood_iron_chest_upgrade>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "wood"})],
						        [<minecraft:iron_ingot>, <storagedrawers:upgrade_storage:1>, <minecraft:iron_ingot>],
							[<minecraft:iron_ingot>, <actuallyadditions:block_misc:9>, <minecraft:iron_ingot>]]);
recipes.remove(<ironchest:iron_chest:4>);  // silver chest / less janky bin
recipes.addShaped(<ironchest:iron_chest:4>, [[<tconstruct:large_plate>.withTag({Material: "silver"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "silver"})],
					     [<immersiveengineering:metal:3>, <minecraft:chest>, <immersiveengineering:metal:3>],
					     [<immersiveengineering:metal:3>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:3>]]);
recipes.remove(<ironchest:copper_silver_chest_upgrade>);
recipes.addShaped(<ironchest:copper_silver_chest_upgrade>, [[<tconstruct:large_plate>.withTag({Material: "silver"}), <architecturecraft:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "silver"})],
							    [<immersiveengineering:metal:3>, <storagedrawers:upgrade_storage>, <immersiveengineering:metal:3>],
							    [<immersiveengineering:metal:3>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:3>]]);
recipes.remove(<ironchest:iron_chest:1>);   // gold chest / black & yellow
recipes.addShaped(<ironchest:iron_chest:1>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
					     [<minecraft:gold_ingot>, <minecraft:chest>, <minecraft:gold_ingot>],
					     [<minecraft:gold_ingot>, <actuallyadditions:block_misc:9>, <minecraft:gold_ingot>]]);
recipes.remove(<ironchest:iron_gold_chest_upgrade>);
recipes.remove(<ironchest:silver_gold_chest_upgrade>);
recipes.addShaped(<ironchest:iron_gold_chest_upgrade>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
						        [<minecraft:gold_ingot>, <storagedrawers:upgrade_storage:1>, <minecraft:gold_ingot>],
							[<minecraft:gold_ingot>, <actuallyadditions:block_misc:9>, <minecraft:gold_ingot>]]);
recipes.addShaped(<ironchest:silver_gold_chest_upgrade>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
							  [<minecraft:gold_ingot>, <storagedrawers:upgrade_storage>, <minecraft:gold_ingot>],
							  [<minecraft:gold_ingot>, <actuallyadditions:block_misc:9>, <minecraft:gold_ingot>]]);
recipes.remove(<ironchest:iron_chest:2>);   // diamond chest / giant bin
recipes.addShaped(<ironchest:iron_chest:2>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
					     [<mekanism:compresseddiamond>, <minecraft:chest>, <mekanism:compresseddiamond>],
					     [<mekanism:compresseddiamond>, <actuallyadditions:block_misc:9>, <mekanism:compresseddiamond>]]);
recipes.remove(<ironchest:gold_diamond_chest_upgrade>);
recipes.addShaped(<ironchest:gold_diamond_chest_upgrade>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
					     [<mekanism:compresseddiamond>, <storagedrawers:upgrade_storage>, <mekanism:compresseddiamond>],
					     [<mekanism:compresseddiamond>, <actuallyadditions:block_misc:9>, <mekanism:compresseddiamond>]]);
recipes.remove(<ironchest:iron_chest:6>);  // obsidian chest
recipes.addShaped(<ironchest:iron_chest:6>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
					     [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <minecraft:chest>, <tconstruct:large_plate>.withTag({Material: "obsidian"})],
					     [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <actuallyadditions:block_misc:9>, <tconstruct:large_plate>.withTag({Material: "obsidian"})]]);
recipes.remove(<ironchest:diamond_obsidian_chest_upgrade>);
recipes.addShaped(<ironchest:diamond_obsidian_chest_upgrade>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
							       [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <storagedrawers:upgrade_storage>, <tconstruct:large_plate>.withTag({Material: "obsidian"})],
							       [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <actuallyadditions:block_misc:9>, <tconstruct:large_plate>.withTag({Material: "obsidian"})]]);
recipes.remove(<ironchest:iron_chest:5>);  // clear chest
recipes.addShaped(<ironchest:iron_chest:5>, [[<immersiveengineering:metal:40>, <architecturecraft:hammer>.reuse(), <immersiveengineering:metal:40>],
					     [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <minecraft:chest>, <tconstruct:large_plate>.withTag({Material: "obsidian"})],
					     [<tconstruct:large_plate>.withTag({Material: "obsidian"}), <mekanism:basicblock:8>, <tconstruct:large_plate>.withTag({Material: "obsidian"})]]);
// drawers
val drawerWoodArray as string[] = [
    "oak",
    "spruce",
    "birch",
    "jungle",
    "acacia",
    "dark_oak"
];
val drawerIngArray as short[] = [
    0,
    1,
    2,
    3,
    4,
    5
];

for i, woodType in drawerWoodArray {
    val basic = <storagedrawers:basicdrawers>.withTag({material: woodType});
    val basic1x2 = <storagedrawers:basicdrawers:1>.withTag({material: woodType});
    val basic2x2 = <storagedrawers:basicdrawers:2>.withTag({material: woodType});
    val half1x2 = <storagedrawers:basicdrawers:3>.withTag({material: woodType});
    val half2x2 = <storagedrawers:basicdrawers:4>.withTag({material: woodType});
    val plank = itemUtils.getItem("minecraft:planks", drawerIngArray[i]);
    val slab = itemUtils.getItem("minecraft:wooden_slab", drawerIngArray[i]);
    scripts.shared.recipeRemapShaped(basic,  [[<bibliocraft:framingsheet>, plank, <bibliocraft:framingsheet>],
    			       [plank, <ore:chestWood>, plank],
			       [<bibliocraft:framingsheet>, plank, <bibliocraft:framingsheet>]]);
    scripts.shared.recipeRemapShaped(basic1x2, [[<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
    				 [plank, plank, plank],
				 [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>]]);
    scripts.shared.recipeRemapShaped(basic2x2, [[<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>],
    				 [plank, plank, plank],
				 [<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>]]);
    scripts.shared.recipeRemapShaped(half1x2, [[<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>],
    			        [slab, slab, slab],
				[<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]]);
    scripts.shared.recipeRemapShaped(half2x2, [[<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>],
    				 [slab, slab, slab],
				 [<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>]]);
}
for i, woodType in drawerWoodArray {
    val plank = itemUtils.getItem("minecraft:planks", drawerIngArray[i]);
    val trim = itemUtils.getItem("storagedrawers:trim", i);
    scripts.shared.recipeRemapShaped(trim * 4, [[<bibliocraft:framingboard>, plank, <bibliocraft:framingboard>],
    					    [plank, plank, plank],
					    [<bibliocraft:framingboard>, plank, <bibliocraft:framingboard>]]);
}

scripts.shared.recipeRemapShaped(<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
			       [[<bibliocraft:framingsheet>, <plants2:planks:2>, <bibliocraft:framingsheet>],
    			       [<plants2:planks:2>, <ore:chestWood>, <plants2:planks:2>],
			       [<bibliocraft:framingsheet>, <plants2:planks:2>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
				[[<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
    				 [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				 [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),
				[[<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>],
    				 [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				 [<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:basicdrawers:3>.withTag({material: "dark_oak"}),
				[[<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>],
    			        [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>],
				[<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:basicdrawers:4>.withTag({material: "dark_oak"}),
				[[<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>],
    			        [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>],
				 [<ore:chestWood>, <bibliocraft:framingsheet>, <ore:chestWood>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:trim:5> * 4, [[<bibliocraft:framingboard>, <plants2:planks:2>, <bibliocraft:framingboard>],
    					    		      [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
							      [<bibliocraft:framingboard>, <plants2:planks:2>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:controller>, [[<bibliocraft:framingsheet>, <storagedrawers:upgrade_template>, <bibliocraft:framingsheet>],
							       [<actuallyadditions:item_crystal:5>, <mekanism:controlcircuit>, <actuallyadditions:item_crystal:5>],
							       [<bibliocraft:framingsheet>, <actuallyadditions:block_misc:9>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:controllerslave>, [[<bibliocraft:framingsheet>, <storagedrawers:upgrade_template>, <bibliocraft:framingsheet>],
								    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal>, <actuallyadditions:item_crystal:5>],
								    [<bibliocraft:framingsheet>, <actuallyadditions:block_misc:4>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:compdrawers>, [[<bibliocraft:framingsheet>, <storagedrawers:upgrade_template>, <bibliocraft:framingsheet>],
							        [<actuallyadditions:item_crystal:5>, <minecraft:piston>, <actuallyadditions:item_crystal:5>],
								[<bibliocraft:framingsheet>, <actuallyadditions:block_misc:4>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:framingtable>, [[null, null, null],
								 [null, null, null],
								 [<ore:drawerTrim>, <tconstruct:tooltables>, <ore:drawerTrim>]]);
recipes.remove(<storagedrawers:upgrade_template> * 2);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_template> * 4, [[<tconstruct:binding>.withTag({Material: "wood"}), <bibliocraft:framingboard>, <tconstruct:binding>.withTag({Material: "wood"})],
								         [<bibliocraft:framingboard>, <ore:drawerTrim>, <bibliocraft:framingboard>],
								         [<tconstruct:binding>.withTag({Material: "wood"}), <projectred-core:resource_item:103>, <tconstruct:binding>.withTag({Material: "wood"})]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_redstone:2>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								       [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								       [<actuallyadditions:item_crystal:5>, <projectred-core:resource_item:103>, <actuallyadditions:item_crystal:5>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_redstone:1>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								       [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								       [<actuallyadditions:item_crystal:1>, <projectred-core:resource_item:103>, <actuallyadditions:item_crystal:1>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_redstone>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								     [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								     [<actuallyadditions:item_crystal>, <projectred-core:resource_item:103>, <actuallyadditions:item_crystal>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_void>, [[<bibliocraft:framingboard>, <mekanism:compressedredstone>, <bibliocraft:framingboard>],
								 [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								 [<bibliocraft:framingboard>, <actuallyadditions:item_crystal_empowered:3>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_status:1>, [[<bibliocraft:framingboard>, <projectred-core:resource_item:104>, <bibliocraft:framingboard>],
								     [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								     [<bibliocraft:framingboard>, <projectred-core:resource_item:103>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_status>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								   [<bibliocraft:framingboard>, <storagedrawers:upgrade_template>, <bibliocraft:framingboard>],
								   [<bibliocraft:framingboard>, <projectred-core:resource_item:103>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_one_stack>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								      [<minecraft:flint>, <storagedrawers:upgrade_template>, <minecraft:flint>],
								      [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_storage:4>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								      [<actuallyadditions:item_crystal:1>, <storagedrawers:upgrade_template>, <actuallyadditions:item_crystal:1>],
								      [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_storage:3>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								      [<minecraft:diamond>, <storagedrawers:upgrade_template>, <minecraft:diamond>],
								      [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_storage:2>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								      [<minecraft:gold_ingot>, <storagedrawers:upgrade_template>, <minecraft:gold_ingot>],
								      [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_storage:1>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								      [<minecraft:iron_ingot>, <storagedrawers:upgrade_template>, <minecraft:iron_ingot>],
								      [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:upgrade_storage>, [[<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>],
								    [<minecraft:obsidian>, <storagedrawers:upgrade_template>, <minecraft:obsidian>],
								    [<bibliocraft:framingboard>, <bibliocraft:framingboard>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:quantify_key>, [[null, <actuallyadditions:item_crystal:1>, null],
								 [null, <storagedrawers:drawer_key>, null],
								 [null, null, null]]);
scripts.shared.recipeRemapShaped(<storagedrawers:personal_key>, [[null, <actuallyadditions:item_crystal:2>, null],
								 [null, <storagedrawers:drawer_key>, null],
								 [null, null, null]]);
scripts.shared.recipeRemapShaped(<storagedrawers:shroud_key>, [[null, <botania:manaresource:22>, null],
							       [null, <storagedrawers:drawer_key>, null],
							       [null, null, null]]);
scripts.shared.recipeRemapShaped(<storagedrawers:drawer_key>, [[null, <minecraft:gold_nugget>, null],
							       [null, <immersiveposts:metal_rods>, null],
							       [null, <storagedrawers:upgrade_template>, null]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customdrawers:3>, [[<bibliocraft:framingboard>, <minecraft:chest>, <bibliocraft:framingboard>],
								    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
								    [<bibliocraft:framingboard>, <minecraft:chest>, <bibliocraft:framingboard>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customdrawers:4>, [[<minecraft:chest>, <bibliocraft:framingboard>, <minecraft:chest>],
								    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
								    [<minecraft:chest>, <bibliocraft:framingboard>, <minecraft:chest>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customdrawers:2>, [[<minecraft:chest>, <bibliocraft:framingsheet>, <minecraft:chest>],
								    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
								    [<minecraft:chest>, <bibliocraft:framingsheet>, <minecraft:chest>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customdrawers:1>, [[<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>],
								    [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
								    [<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customdrawers>, [[<bibliocraft:framingsheet>, <minecraft:stick>, <bibliocraft:framingsheet>],
								  [<minecraft:stick>, <minecraft:chest>, <minecraft:stick>],
								  [<bibliocraft:framingsheet>, <minecraft:stick>, <bibliocraft:framingsheet>]]);
scripts.shared.recipeRemapShaped(<storagedrawers:customtrim>, [[<bibliocraft:framingsheet>, <bibliocraft:framingboard>, <bibliocraft:framingsheet>],
							       [<bibliocraft:framingboard>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:framingboard>],
							       [<bibliocraft:framingsheet>, <bibliocraft:framingboard>, <bibliocraft:framingsheet>]]);
// ae2
scripts.shared.recipeRemapShaped(<appliedenergistics2:charger>, [[<immersiveengineering:metal:39>, <appliedenergistics2:material:12>|<ore:crystalFluix>, <immersiveengineering:metal:39>],
								 [<immersiveengineering:metal:31>, null, null],
								 [<immersiveengineering:metal:39>, <appliedenergistics2:material:12>|<ore:crystalFluix>, <immersiveengineering:metal:39>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:dense_energy_cell>, [[<appliedenergistics2:material:10>, <mekanism:controlcircuit:1>, <appliedenergistics2:material:10>],
									   [<appliedenergistics2:material:8>, <actuallyadditions:item_battery_triple>, <appliedenergistics2:material:8>],
									   [<appliedenergistics2:material:10>, <mekanism:basicblock:8>, <appliedenergistics2:material:10>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:energy_cell>, [[<appliedenergistics2:material>, <mekanism:controlcircuit>, <appliedenergistics2:material>],
								     [<appliedenergistics2:material:8>, <actuallyadditions:item_battery_double>, <appliedenergistics2:material:8>],
								     [<appliedenergistics2:material>, <actuallyadditions:block_misc:9>, <appliedenergistics2:material>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:drive>, [[<tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:controlcircuit:2>, <tconstruct:large_plate>.withTag({Material: "iron"})],
							       [<appliedenergistics2:part:16>, <appliedenergistics2:material:24>, <appliedenergistics2:part:16>],
							       [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal_empowered:5>]]);

recipes.remove(<appliedenergistics2:controller>);
mods.actuallyadditions.Empowerer.addRecipe(<appliedenergistics2:controller>, <appliedenergistics2:material:24>, <mekanism:controlcircuit:1>, <appliedenergistics2:smooth_sky_stone_block>,
									     <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_misc:8>,
									     5000, 90);
// illuminated panel
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:180>, [[null, <opencomputers:material:7>, <appliedenergistics2:quartz_glass>],
								  [null, <appliedenergistics2:material:22>, <appliedenergistics2:quartz_glass>],
								  [null, <actuallyadditions:item_crystal>, <appliedenergistics2:quartz_glass>]]);
// annihilation and formation cores
recipes.remove(<appliedenergistics2:material:44>);
mods.actuallyadditions.Empowerer.addRecipe(<appliedenergistics2:material:44>, <appliedenergistics2:material:22>, <appliedenergistics2:material:2>,
									      <appliedenergistics2:material:7>, <actuallyadditions:item_crystal:1>,
									      <actuallyadditions:item_misc:7>, 2500, 15);
recipes.remove(<appliedenergistics2:material:43>);
mods.actuallyadditions.Empowerer.addRecipe(<appliedenergistics2:material:43>, <appliedenergistics2:material:22>, <appliedenergistics2:material:8>,
									      <appliedenergistics2:material>, <actuallyadditions:item_crystal>,
									      <actuallyadditions:item_misc:7>, 2500, 15);
scripts.shared.recipeRemapShaped(<appliedenergistics2:interface>, [[<immersiveengineering:metal:31>, <immersiveengineering:metal:31>, <immersiveengineering:metal:31>],
								   [<appliedenergistics2:material:44>, <actuallyadditions:block_misc:9>, <appliedenergistics2:material:43>],
								   [<appliedenergistics2:part:16>, <mekanism:transmitter:3>, <immersiveengineering:material:8>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:chest>, [[<appliedenergistics2:quartz_glass>, <appliedenergistics2:part:380>, <appliedenergistics2:quartz_glass>],
							       [<appliedenergistics2:part:16>, <minecraft:chest>, <immersiveengineering:metal:39>],
							       [<actuallyadditions:item_crystal:3>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal:3>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:io_port>, [[null, null, null],
								 [<appliedenergistics2:material:22>, <appliedenergistics2:drive>, <appliedenergistics2:material:22>],
								 [<appliedenergistics2:part:16>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_crystal>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:cell_workbench>, [[<mekanism:plasticblock:4>, <immersiveengineering:metal:31>, <mekanism:plasticblock:4>],
								        [<mekanism:controlcircuit>, <tconstruct:tooltables>, <appliedenergistics2:material:23>],
									[<mekanism:plasticblock:7>, <actuallyadditions:block_misc:9>, <mekanism:plasticblock:7>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:energy_acceptor>, [[<appliedenergistics2:quartz_glass>, <actuallyadditions:item_misc:8>, <appliedenergistics2:quartz_glass>],
									 [<appliedenergistics2:part:16>, <appliedenergistics2:material:24>, <mekanism:transmitter>],
									 [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <extrautils2:decorativeglass>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:crafting_accelerator>, [[null, <actuallyadditions:item_misc:8>, null],
									      [null, <appliedenergistics2:crafting_unit>, null],
									      [null, <actuallyadditions:item_misc:8>, null]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:crafting_unit>, [[<actuallyadditions:item_crystal_empowered:5>, <appliedenergistics2:material:23>, <actuallyadditions:item_crystal_empowered:5>],
								       [<mekanism:controlcircuit:2>, <mekanism:basicblock:8>, <appliedenergistics2:material:22>],
								       [<appliedenergistics2:part:16>, <appliedenergistics2:material:23>, <actuallyadditions:item_misc:7>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:molecular_assembler>, [[<appliedenergistics2:quartz_glass>, <actuallyadditions:item_misc:8>, <appliedenergistics2:quartz_glass>],
									     [<appliedenergistics2:material:44>, <actuallyadditions:block_misc:9>, <appliedenergistics2:material:43>],
									     [<mekanism:enrichedalloy>, <tconstruct:tooltables>, <mekanism:enrichedalloy>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:360>, [[null, null, null],
								  [null, <actuallyadditions:item_misc:7>, <appliedenergistics2:part:380>],
								  [null, <tconstruct:tooltables>, <appliedenergistics2:material:23>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:380>, [[null, null, null],
								  [<appliedenergistics2:part:16>, <mekanism:enrichedalloy>, <ore:itemIlluminatedPanel>],
								  [<appliedenergistics2:material:44>, <appliedenergistics2:material:22>, <appliedenergistics2:material:43>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:261>, [[null, null, null],
								  [<immersiveengineering:metal:39>, <appliedenergistics2:part:16>, <appliedenergistics2:material:43>],
								  [<actuallyadditions:item_crystal:1>, <minecraft:piston>, <actuallyadditions:item_misc:7>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:260>, [[null, null, null],
								  [<immersiveengineering:metal:39>, <appliedenergistics2:part:16>, <appliedenergistics2:material:43>],
								  [<immersiveengineering:metal:39>, <minecraft:piston>, <actuallyadditions:item_misc:7>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:221>, [[null, null, null],
								  [<appliedenergistics2:part:16>, <appliedenergistics2:interface>, <mekanism:transmitter:1>],
								  [<actuallyadditions:item_crystal:1>, <botania:manaresource>, <mekanism:enrichedalloy>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:220>, [[null, null, null],
								  [<appliedenergistics2:part:16>, <appliedenergistics2:interface>, <mekanism:transmitter:1>],
								  [<mekanism:enrichedalloy>, <botania:manaresource>, <mekanism:enrichedalloy>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:340>, [[null, null, null],
								  [null, <appliedenergistics2:part:16>, <appliedenergistics2:part:380>],
								  [null, <tconstruct:pattern>, <appliedenergistics2:material:22>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:480>, [[null, null, null],
								  [null, <appliedenergistics2:part:16>, <appliedenergistics2:part:380>],
								  [<mekanism:enrichedalloy>, <mekanism:controlcircuit:2>, <appliedenergistics2:material:22>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:520>, [[null, null, null],
								  [null, <appliedenergistics2:part:16>, <appliedenergistics2:part:380>],
								  [null, <actuallyadditions:item_crystal:1>, <appliedenergistics2:material:22>]]);
scripts.shared.recipeRemapShaped(<appliedenergistics2:part:241>, [[null, null, null],
								  [<immersiveengineering:metal:39>, <appliedenergistics2:part:16>, <appliedenergistics2:material:44>],
								  [<actuallyadditions:item_crystal:1>, <minecraft:piston>, <actuallyadditions:item_misc:7>]]);
