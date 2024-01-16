import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// some things get removed for game balance reasons

// CGM has balance issues, and doesn't work properly with reskillable, so here we are
// ammo is done using existing ie blueprints
mods.immersiveengineering.Blueprint.addRecipe("bullet", <cgm:basic_ammo>, [<immersiveengineering:bullet>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <immersiveengineering:metal:22>,
                                                                          <immersiveengineering:metal:22>,
                                                                          <mekanism:nugget:5>]);
mods.immersiveengineering.Blueprint.addRecipe("bullet", <cgm:shell>, [<immersiveengineering:bullet:1>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:iron_nugget>,
                                                                          <minecraft:iron_nugget>,
                                                                          <minecraft:iron_nugget>]);
// this will be a non-craftable blueprint
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:missile>, [<mekanism:plasticblock:8>,
                                                                          <cyclicmagic:ender_tnt_3>,
                                                                          <immersiveengineering:material:8>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <mekanism:nugget:4>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:stun_grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:glowstone_dust>,
                                                                          <minecraft:glowstone_dust>]);
// weapons
recipes.addShaped(<cgm:shotgun>, [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
                                 [<immersiveengineering:material:9>, <immersiveengineering:material:14>, <immersiveengineering:material:14>],
                                 [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
recipes.addShaped(<cgm:machine_pistol>, [[<mekanism:basicblock:8>, <mekanism:basicblock:8>, null],
                                        [<immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:14>],
                                        [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
recipes.addShaped(<cgm:assault_rifle>, [[<mekanism:plasticblock:8>, <mekanism:plasticblock:8>, null],
                                       [<mekanism:basicblock:8>, <immersiveengineering:material:9>, <immersiveengineering:material:14>],
                                       [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
recipes.addShaped(<cgm:chain_gun>, [[<immersiveengineering:material:9>, <mekanism:basicblock:8>, <immersiveengineering:material:14>],
                                   [<alchemistry:ingot:74>, <mekanism:basicblock:8>, <immersiveengineering:material:14>],
                                   [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
recipes.addShaped(<cgm:grenade_launcher>, [[<opencomputers:component>, <mekanism:plasticblock:8>, <immersiveengineering:metal_device1:6>],
                                          [<mekanism:basicblock:8>, <mekanism:basicblock:8>, <mekanism:plasticblock:8>],
                                          [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
recipes.addShaped(<cgm:bazooka>, [[<mekanism:plasticblock:8>, <mekanism:plasticblock:8>, <mekanism:plasticblock:8>],
                                 [<opencomputers:component>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>],
                                 [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
// parts
recipes.addShaped(<cgm:scope>, [[null, null, null],
                               [null, <immersiveengineering:toolupgrade:8>, null],
                               [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:1>, [[null, null, null],
                                 [<immersiveengineering:material:8>, <immersiveengineering:toolupgrade:8>, <minecraft:glass>],
                                 [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:2>, [[null, null, null],
                                 [<alchemistry:ingot:88>, <immersiveengineering:toolupgrade:8>, <tconstruct:seared_glass>],
                                 [null, <immersiveengineering:material:9>, null]]);

//// booms
// efln
recipes.addShaped(<tconstruct:throwball:1> * 4, [
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>],
                                           [<immersiveengineering:material:2>, <immersiveengineering:wooden_device0:4>, <immersiveengineering:material:2>],
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>]]);
recipes.removeShapeless(<tconstruct:throwball:1>);
recipes.removeShapeless(<tconstruct:throwball:1>);

//// recycle
// people gonna end up with extra lore
recipes.addShapeless(<minecraft:paper>, [<loreexpansion:lore_scrap>]);

//// allow crafting of lore journal
recipes.addShaped(<loreexpansion:lore_journal>, [[null, <minecraft:book>, null],[null, <minecraft:gold_nugget>, null], [null, <minecraft:book>, null]]);

//// ore balancing - only transfer via smeltery
// unidict why tho
mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.removalByKind.get("Crafting").remove("plate");
mods.unidict.removalByKind.get("Crafting").remove("ingot");
mods.unidict.removalByKind.get("Crafting").remove("nugget");

// except we can do something else for lead plates i guess?
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:metal:32>, <tconstruct:fancy_frame:6>, <liquid:lead>, 144, true, 300);

// blocks only from tinkers
recipes.remove(<minecraft:iron_block>);
recipes.remove(<minecraft:gold_block>);
// copper
recipes.remove(<mekanism:basicblock:12>);
// lead
recipes.remove(<immersiveengineering:storage:2>);
// uranium
recipes.remove(<immersiveengineering:storage:5>);
// steel
recipes.remove(<mekanism:basicblock:5>);
// manasteel
recipes.remove(<botania:storage>);
// terrasteel
recipes.remove(<botania:storage:1>);
// elementium
recipes.remove(<botania:storage:2>);
// nickle
recipes.remove(<immersiveengineering:storage:4>);
// zinc
recipes.remove(<railcraft:metal:8>);
// silver
recipes.remove(<immersiveengineering:storage:3>);
// aluminum
recipes.remove(<immersiveengineering:storage:1>);
// constantan
recipes.remove(<immersiveengineering:storage:6>);
// electrum
recipes.remove(<immersiveengineering:storage:7>);
// emerald
recipes.remove(<minecraft:emerald_block>);
// diamond
recipes.remove(<minecraft:diamond_block>);
// cobalt
recipes.remove(<tconstruct:metal>);
// ardite
recipes.remove(<tconstruct:metal:1>);
// manyllun
recipes.remove(<tconstruct:metal:2>);
// knightslime
recipes.remove(<tconstruct:metal:3>);
// pigiron
recipes.remove(<tconstruct:metal:4>);
// aluminum brass
recipes.remove(<tconstruct:metal:5>);
// brass
recipes.remove(<railcraft:metal:9>);

//// paper and paper products
// craftable from rice, sugarcane, sawdust, and some recycling
recipes.remove(<minecraft:paper>);
recipes.addShaped(<minecraft:paper> * 3, [
				    [null, null, null],
				    [<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>],
				    [null, null, null]]);
recipes.addShaped(<minecraft:paper> * 3, [
				    [null, null, null],
				    [<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>],
				    [null, null, null]]);
recipes.addShaped(<minecraft:paper> * 3, [
				    [null, null, null],
				    [<harvestcraft:riceitem>, <harvestcraft:riceitem>, <harvestcraft:riceitem>],
				    [null, null, null]]);
recipes.addShapeless(<minecraft:paper>, [<loreexpansion:lore_scrap>, <minecraft:water_bucket>]);
recipes.addShapeless(<minecraft:paper>, [<openprinter:paper_shreds>, <minecraft:water_bucket>]);


recipes.remove(<bibliocraft:biblioclipboard>);
recipes.addShaped(<bibliocraft:biblioclipboard>, [[null, null, <mysticalagriculture:crafting:24>],
						 [null, <tconstruct:pattern>, <immersiveengineering:material:1>],
						 [null, <minecraft:book>, <mystcraft:vial>]]);
// rice
recipes.addShaped(<minecraft:paper> * 3, [[null, null, null],[<harvestcraft:riceitem>, <harvestcraft:riceitem>, <harvestcraft:riceitem>], [null, null, null]]);

// string consistency
recipes.removeShapeless(<minecraft:string>, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);
recipes.addShapeless(<minecraft:string> * 2, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);
recipes.removeShapeless(<minecraft:string> * 2, [<plants2:generic>, <plants2:generic>, <plants2:generic>, <plants2:generic>, <plants2:generic>]);
recipes.addShapeless(<minecraft:string> * 2, [<plants2:generic>, <plants2:generic>, <plants2:generic>]);

// instant community generated teleportation is hard
recipes.remove(<waystones:warp_stone>);
recipes.addShaped(<waystones:warp_stone>, [[<actuallyadditions:item_crystal_empowered>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered:1>],
					  [<mysticalagriculture:crafting:2>,
					  <mekanism:teleportationcore>,
					  <mysticalagriculture:crafting:2>],
					  [<actuallyadditions:item_crystal_empowered:1>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered>]]);

//// simplify chests
// TODO: railcraft chest split / recovery recipe?
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
				      [<ore:plankWood>, null, <ore:plankWood>],
				      [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
// luggage :3
recipes.remove(<openblocks:luggage>);
recipes.addShaped(<openblocks:luggage>, [[<minecraft:spider_eye>, <minecraft:diamond>, <minecraft:spider_eye>],
					 [<minecraft:rabbit_foot>, <minecraft:chest>, <minecraft:rabbit_foot>],
					 [<minecraft:rabbit_foot>, <mysticalagriculture:storage>, <minecraft:rabbit_foot>]]);
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

//// skilled construction but not use of furniture

// sitting things
recipes.remove(<cfm:chair_oak>);
recipes.addShaped(<cfm:chair_oak>, [[<minecraft:planks>, null, null],
				   [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				   [<minecraft:planks>, <architecturecraft:hammer>.reuse(), <minecraft:planks>]]);
recipes.remove(<cfm:chair_spruce>);
recipes.addShaped(<cfm:chair_spruce>, [[<minecraft:planks:1>, null, null],
				      [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				      [<minecraft:planks:1>, <architecturecraft:hammer>.reuse(), <minecraft:planks:1>]]);
recipes.remove(<cfm:chair_birch>);
recipes.addShaped(<cfm:chair_birch>, [[<minecraft:planks:2>, null, null],
				     [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				     [<minecraft:planks:2>, <architecturecraft:hammer>.reuse(), <minecraft:planks:2>]]);
recipes.remove(<cfm:chair_jungle>);
recipes.addShaped(<cfm:chair_jungle>, [[<minecraft:planks:3>, null, null],
				     [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				     [<minecraft:planks:3>, <architecturecraft:hammer>.reuse(), <minecraft:planks:3>]]);
recipes.remove(<cfm:chair_acacia>);
recipes.addShaped(<cfm:chair_acacia>, [[<minecraft:planks:4>, null, null],
				     [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
				     [<minecraft:planks:4>, <architecturecraft:hammer>.reuse(), <minecraft:planks:4>]]);
recipes.remove(<cfm:chair_dark_oak>);
recipes.addShaped(<cfm:chair_dark_oak>, [[<minecraft:planks:5>, null, null],
				     [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				     [<minecraft:planks:5>, <architecturecraft:hammer>.reuse(), <minecraft:planks:5>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],
				     [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				     [<plants2:planks:2>, <architecturecraft:hammer>.reuse(), <plants2:planks:2>]]);

recipes.remove(<cfm:chair_diorite>);
recipes.addShaped(<cfm:chair_diorite>, [[<minecraft:stone:3>, null, null],
				     [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				     [<minecraft:stone:3>, <architecturecraft:hammer>.reuse(), <minecraft:stone:3>]]);
recipes.remove(<cfm:chair_granite>);
recipes.addShaped(<cfm:chair_granite>, [[<minecraft:stone:1>, null, null],
				     [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				     [<minecraft:stone:1>, <architecturecraft:hammer>.reuse(), <minecraft:stone:1>]]);
recipes.remove(<cfm:chair_andesite>);
recipes.addShaped(<cfm:chair_andesite>, [[<minecraft:stone:5>, null, null],
				     [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				     [<minecraft:stone:5>, <architecturecraft:hammer>.reuse(), <minecraft:stone:5>]]);
recipes.remove(<cfm:chair_stone>);
recipes.addShaped(<cfm:chair_stone>, [[<minecraft:cobblestone>, null, null],
				     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				     [<minecraft:cobblestone>, <architecturecraft:hammer>.reuse(), <minecraft:cobblestone>]]);
recipes.remove(<cfm:bench>);
recipes.addShaped(<cfm:bench>, [[null, null, null],
			       [<minecraft:log>, <minecraft:planks>, <minecraft:log>],
			       [<minecraft:planks>, <architecturecraft:hammer>.reuse(), <minecraft:planks>]]);
recipes.remove(<cfm:park_bench_oak>);
recipes.addShaped(<cfm:park_bench_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					[<minecraft:log>, <architecturecraft:hammer>.reuse(), <minecraft:log>]]);
recipes.remove(<cfm:park_bench_spruce>);
recipes.addShaped(<cfm:park_bench_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					[<minecraft:log:1>, <architecturecraft:hammer>.reuse(), <minecraft:log:1>]]);
recipes.remove(<cfm:park_bench_birch>);
recipes.addShaped(<cfm:park_bench_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:log:2>, <architecturecraft:hammer>.reuse(), <minecraft:log:2>]]);
recipes.remove(<cfm:park_bench_jungle>);
recipes.addShaped(<cfm:park_bench_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:log:3>, <architecturecraft:hammer>.reuse(), <minecraft:log:3>]]);
recipes.remove(<cfm:park_bench_acacia>);
recipes.addShaped(<cfm:park_bench_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:log2>, <architecturecraft:hammer>.reuse(), <minecraft:log2>]]);
recipes.remove(<cfm:park_bench_dark_oak>);
recipes.addShaped(<cfm:park_bench_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:log2:1>, <architecturecraft:hammer>.reuse(), <minecraft:log2:1>]]);
recipes.addShaped(<cfm:park_bench_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					[<plants2:log_0>, <architecturecraft:hammer>.reuse(), <plants2:log_0>]]);

// coffee table
recipes.remove(<cfm:coffee_table_oak>);
recipes.addShaped(<cfm:coffee_table_oak>, [[null, null, null],
					  [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					  [<minecraft:planks>, <architecturecraft:hammer>.reuse(), <minecraft:planks>]]);
recipes.remove(<cfm:coffee_table_spruce>);
recipes.addShaped(<cfm:coffee_table_spruce>, [[null, null, null],
					  [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					  [<minecraft:planks:1>, <architecturecraft:hammer>.reuse(), <minecraft:planks:1>]]);
recipes.remove(<cfm:coffee_table_birch>);
recipes.addShaped(<cfm:coffee_table_birch>, [[null, null, null],
					  [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					  [<minecraft:planks:2>, <architecturecraft:hammer>.reuse(), <minecraft:planks:2>]]);
recipes.remove(<cfm:coffee_table_jungle>);
recipes.addShaped(<cfm:coffee_table_jungle>, [[null, null, null],
					  [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					  [<minecraft:planks:3>, <architecturecraft:hammer>.reuse(), <minecraft:planks:3>]]);
recipes.remove(<cfm:coffee_table_acacia>);
recipes.addShaped(<cfm:coffee_table_acacia>, [[null, null, null],
					  [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					  [<minecraft:planks:4>, <architecturecraft:hammer>.reuse(), <minecraft:planks:4>]]);
recipes.remove(<cfm:coffee_table_dark_oak>);
recipes.addShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					  [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					  [<minecraft:planks:5>, <architecturecraft:hammer>.reuse(), <minecraft:planks:5>]]);
recipes.addShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					  [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					  [<plants2:planks:2>, <architecturecraft:hammer>.reuse(), <plants2:planks:2>]]);
recipes.remove(<cfm:coffee_table_diorite>);
recipes.addShaped(<cfm:coffee_table_diorite>, [[null, null, null],
					  [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					  [<minecraft:stone:3>, <architecturecraft:hammer>.reuse(), <minecraft:stone:3>]]);
recipes.remove(<cfm:coffee_table_granite>);
recipes.addShaped(<cfm:coffee_table_granite>, [[null, null, null],
					  [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					  [<minecraft:stone:1>, <architecturecraft:hammer>.reuse(), <minecraft:stone:1>]]);
recipes.remove(<cfm:coffee_table_andesite>);
recipes.addShaped(<cfm:coffee_table_andesite>, [[null, null, null],
					  [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					  [<minecraft:stone:5>, <architecturecraft:hammer>.reuse(), <minecraft:stone:5>]]);
recipes.remove(<cfm:coffee_table_stone>);
recipes.addShaped(<cfm:coffee_table_stone>, [[null, null, null],
					  [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					  [<minecraft:cobblestone>, <architecturecraft:hammer>.reuse(), <minecraft:cobblestone>]]);
recipes.remove(<cfm:modern_coffee_table>);
recipes.addShaped(<cfm:modern_coffee_table>, [[null, null, null],
					     [<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
					     [<minecraft:concrete:8>, <architecturecraft:hammer>.reuse(), <minecraft:concrete:8>]]);
// other tables
recipes.remove(<cfm:table_oak>);
recipes.addShaped(<cfm:table_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				   [null, <minecraft:planks>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks>, null]]);
recipes.remove(<cfm:table_spruce>);
recipes.addShaped(<cfm:table_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				   [null, <minecraft:planks:1>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks:1>, null]]);
recipes.remove(<cfm:table_birch>);
recipes.addShaped(<cfm:table_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				   [null, <minecraft:planks:2>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks:2>, null]]);
recipes.remove(<cfm:table_jungle>);
recipes.addShaped(<cfm:table_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				   [null, <minecraft:planks:3>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks:3>, null]]);
recipes.remove(<cfm:table_acacia>);
recipes.addShaped(<cfm:table_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
				   [null, <minecraft:planks:4>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks:4>, null]]);
recipes.remove(<cfm:table_dark_oak>);
recipes.addShaped(<cfm:table_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				   [null, <minecraft:planks:5>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:planks:5>, null]]);
recipes.remove(<cfm:table_dark_oak>);
recipes.addShaped(<cfm:table_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				   [null, <plants2:planks:2>, null],
				   [<architecturecraft:hammer>.reuse(), <plants2:planks:2>, null]]);
recipes.remove(<cfm:table_diorite>);
recipes.addShaped(<cfm:table_diorite>, [[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				   [null, <minecraft:stone:3>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:stone:3>, null]]);
recipes.remove(<cfm:table_granite>);
recipes.addShaped(<cfm:table_granite>, [[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				   [null, <minecraft:stone:1>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:stone:1>, null]]);
recipes.remove(<cfm:table_andesite>);
recipes.addShaped(<cfm:table_andesite>, [[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				   [null, <minecraft:stone:5>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:stone:5>, null]]);
recipes.remove(<cfm:table_stone>);
recipes.addShaped(<cfm:table_stone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				   [null, <minecraft:cobblestone>, null],
				   [<architecturecraft:hammer>.reuse(), <minecraft:cobblestone>, null]]);
recipes.remove(<cfm:table_outdoor>);
recipes.addShaped(<cfm:table_outdoor>, [[<minecraft:log>, <minecraft:stained_glass:12>, <minecraft:log>],
				       [<minecraft:planks>, <architecturecraft:hammer>.reuse(), <minecraft:planks>],
				       [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.remove(<cfm:modern_table>);
recipes.addShaped(<cfm:modern_table>, [[<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
				      [<minecraft:concrete:8>, <architecturecraft:hammer>.reuse(), <minecraft:concrete:8>],
				      [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.remove(<cfm:modern_table_outdoor>);
recipes.addShaped(<cfm:modern_table_outdoor>, [[<minecraft:concrete>, <minecraft:glass>, <minecraft:concrete>],
					      [<minecraft:concrete:8>, <architecturecraft:hammer>.reuse(), <minecraft:concrete:8>],
					      [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
// bibliocraft tables
recipes.remove(<bibliocraft:table>);
recipes.addShaped(<bibliocraft:table>, [[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
				       [null, <minecraft:planks>, <architecturecraft:hammer>.reuse()],
				       [null, <minecraft:planks>, null]]);
recipes.remove(<bibliocraft:table:1>);
recipes.addShaped(<bibliocraft:table:1>, [[<minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:1>],
				      	  [null, <minecraft:planks:1>, <architecturecraft:hammer>.reuse()],
					  [null, <minecraft:planks:1>, null]]);
recipes.remove(<bibliocraft:table:2>);
recipes.addShaped(<bibliocraft:table:2>, [[<minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:2>],
				      	  [null, <minecraft:planks:2>, <architecturecraft:hammer>.reuse()],
					  [null, <minecraft:planks:2>, null]]);
recipes.remove(<bibliocraft:table:3>);
recipes.addShaped(<bibliocraft:table:3>, [[<minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:3>],
				      	  [null, <minecraft:planks:3>, <architecturecraft:hammer>.reuse()],
					  [null, <minecraft:planks:3>, null]]);
recipes.remove(<bibliocraft:table:4>);
recipes.addShaped(<bibliocraft:table:4>, [[<minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:4>],
				      	  [null, <minecraft:planks:4>, <architecturecraft:hammer>.reuse()],
					  [null, <minecraft:planks:4>, null]]);
recipes.remove(<bibliocraft:table:5>);
recipes.addShaped(<bibliocraft:table:5>, [[<minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>, <minecraft:wooden_slab:5>],
				      	  [null, <minecraft:planks:5>, <architecturecraft:hammer>.reuse()],
					  [null, <minecraft:planks:5>, null]]);
// framed bibliocraft table
recipes.remove(<bibliocraft:table:6>);
recipes.addShaped(<bibliocraft:table:6>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
				      	  [null, <bibliocraft:framingboard>, <architecturecraft:hammer>.reuse()],
					  [null, <bibliocraft:framingboard>, null]]);

// cabinets are cool
recipes.remove(<cfm:bedside_cabinet_oak>);
recipes.addShaped(<cfm:bedside_cabinet_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks>, <ore:chestWood>, <minecraft:planks>],
					     [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);
recipes.remove(<cfm:bedside_cabinet_spruce>);
recipes.addShaped(<cfm:bedside_cabinet_spruce>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:1>, <ore:chestWood>, <minecraft:planks:1>],
					     [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);
recipes.remove(<cfm:bedside_cabinet_birch>);
recipes.addShaped(<cfm:bedside_cabinet_birch>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:2>, <ore:chestWood>, <minecraft:planks:2>],
					     [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);
recipes.remove(<cfm:bedside_cabinet_jungle>);
recipes.addShaped(<cfm:bedside_cabinet_jungle>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:3>, <ore:chestWood>, <minecraft:planks:3>],
					     [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);
recipes.remove(<cfm:bedside_cabinet_acacia>);
recipes.addShaped(<cfm:bedside_cabinet_acacia>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:4>, <ore:chestWood>, <minecraft:planks:4>],
					     [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);
recipes.remove(<cfm:bedside_cabinet_dark_oak>);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:5>, <ore:chestWood>, <minecraft:planks:5>],
					     [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<plants2:planks:2>, <ore:chestWood>, <plants2:planks:2>],
					     [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.remove(<cfm:bedside_cabinet_diorite>);
recipes.addShaped(<cfm:bedside_cabinet_diorite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:3>, <ore:chestWood>, <minecraft:stone:3>],
					     [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>]]);
recipes.remove(<cfm:bedside_cabinet_granite>);
recipes.addShaped(<cfm:bedside_cabinet_granite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:1>, <ore:chestWood>, <minecraft:stone:1>],
					     [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>]]);
recipes.remove(<cfm:bedside_cabinet_andesite>);
recipes.addShaped(<cfm:bedside_cabinet_andesite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:5>, <ore:chestWood>, <minecraft:stone:5>],
					     [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>]]);
recipes.remove(<cfm:bedside_cabinet_stone>);
recipes.addShaped(<cfm:bedside_cabinet_stone>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:cobblestone>, <ore:chestWood>, <minecraft:cobblestone>],
					     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.remove(<cfm:cabinet_oak>);
recipes.addShaped(<cfm:cabinet_oak>, [[<minecraft:planks>, <bibliocraft:framingsheet>, <minecraft:planks>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks>, <bibliocraft:framingsheet>, <minecraft:planks>]]);
recipes.remove(<cfm:cabinet_spruce>);
recipes.addShaped(<cfm:cabinet_spruce>, [[<minecraft:planks:1>, <bibliocraft:framingsheet>, <minecraft:planks:1>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:1>, <bibliocraft:framingsheet>, <minecraft:planks:1>]]);
recipes.remove(<cfm:cabinet_birch>);
recipes.addShaped(<cfm:cabinet_birch>, [[<minecraft:planks:2>, <bibliocraft:framingsheet>, <minecraft:planks:2>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:2>, <bibliocraft:framingsheet>, <minecraft:planks:2>]]);
recipes.remove(<cfm:cabinet_jungle>);
recipes.addShaped(<cfm:cabinet_jungle>, [[<minecraft:planks:3>, <bibliocraft:framingsheet>, <minecraft:planks:3>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:3>, <bibliocraft:framingsheet>, <minecraft:planks:3>]]);
recipes.remove(<cfm:cabinet_acacia>);
recipes.addShaped(<cfm:cabinet_acacia>, [[<minecraft:planks:4>, <bibliocraft:framingsheet>, <minecraft:planks:4>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:4>, <bibliocraft:framingsheet>, <minecraft:planks:4>]]);
recipes.remove(<cfm:cabinet_dark_oak>);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<minecraft:planks:5>, <bibliocraft:framingsheet>, <minecraft:planks:5>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:5>, <bibliocraft:framingsheet>, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<plants2:planks:2>, <bibliocraft:framingsheet>, <plants2:planks:2>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<plants2:planks:2>, <bibliocraft:framingsheet>, <plants2:planks:2>]]);
recipes.remove(<cfm:cabinet_diorite>);
recipes.addShaped(<cfm:cabinet_diorite>, [[<minecraft:stone:3>, <bibliocraft:framingsheet>, <minecraft:stone:3>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:3>, <bibliocraft:framingsheet>, <minecraft:stone:3>]]);
recipes.remove(<cfm:cabinet_granite>);
recipes.addShaped(<cfm:cabinet_granite>, [[<minecraft:stone:1>, <bibliocraft:framingsheet>, <minecraft:stone:1>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:1>, <bibliocraft:framingsheet>, <minecraft:stone:1>]]);
recipes.remove(<cfm:cabinet_andesite>);
recipes.addShaped(<cfm:cabinet_andesite>, [[<minecraft:stone:5>, <bibliocraft:framingsheet>, <minecraft:stone:5>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:5>, <bibliocraft:framingsheet>, <minecraft:stone:5>]]);
recipes.remove(<cfm:cabinet_stone>);
recipes.addShaped(<cfm:cabinet_stone>, [[<minecraft:cobblestone>, <bibliocraft:framingsheet>, <minecraft:cobblestone>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:cobblestone>, <bibliocraft:framingsheet>, <minecraft:cobblestone>]]);

//// equipment balancing
// steel is gated exclusively on blast furnace
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>, <minecraft:iron_ingot>, "CARBON");
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>, <mekanism:enrichediron>, "CARBON");
// aesthetic hammer tuning
recipes.remove(<vehicle:hammer>);
recipes.addShaped(<vehicle:hammer>, [[<tconstruct:hammer_head>.withTag({Material: "iron"}), <mekanism:ingot:1>, <tconstruct:hammer_head>.withTag({Material: "iron"})],
				    [null, <immersiveengineering:material:1>, null],
				    [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null]]);
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>, [[<tconstruct:hammer_head>.withTag({Material: "iron"}), <immersiveengineering:metal:39>, <immersiveengineering:material:1>],
					      [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null],
					      [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null]]);
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>, [[null, <minecraft:iron_ingot>, <tconstruct:binding>.withTag({Material: "wood"})],
					      [null, <tconstruct:tool_rod>.withTag({Material: "wood"}), <minecraft:iron_ingot>],
					      [<tconstruct:tool_rod>.withTag({Material: "wood"}), null, null]]);

// so many tools
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShaped(<extrautils2:wateringcan:1000>, [[<immersiveengineering:metal:30>, null, null],
						  [<immersiveengineering:metal:30>, <minecraft:bucket>, <tconstruct:tough_tool_rod>.withTag({Material:"copper"})],
						  [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[null, <immersiveengineering:material:1>, null],
				      [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
				      [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
// fluid storage
recipes.remove(<mekanism:machineblock2:11>.withTag({tier:0}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:0}), [[<tconstruct:clear_glass>, <railcraft:plate:2>, <tconstruct:clear_glass>],
					       [<railcraft:plate:2>, <immersivetech:metal_barrel:1>, <railcraft:plate:2>],
					       [<tconstruct:clear_glass>, <railcraft:plate:2>, <tconstruct:clear_glass>]]);
recipes.remove(<mekanism:machineblock2:11>.withTag({tier:1}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:1}), [[<mekanism:enrichedalloy>, <immersiveengineering:metal:39>, <mekanism:enrichedalloy>],
					       [<immersiveengineering:metal:39>, <mekanism:machineblock2:11>, <immersiveengineering:metal:39>],
					       [<mekanism:enrichedalloy>, <immersiveengineering:metal:39>, <mekanism:enrichedalloy>]]);
recipes.remove(<mekanism:machineblock2:11>.withTag({tier:2}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:2}), [[<mekanism:reinforcedalloy>, <tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:reinforcedalloy>],
					       [<tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:machineblock2:11>.withTag({tier:1}), <tconstruct:large_plate>.withTag({Material:"iron"})],
					       [<mekanism:reinforcedalloy>, <tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:reinforcedalloy>]]);
recipes.remove(<mekanism:machineblock2:11>.withTag({tier:3}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:3}), [[<mekanism:atomicalloy>, <tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:atomicalloy>],
					       [<tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:machineblock2:11>.withTag({tier:2}), <tconstruct:large_plate>.withTag({Material:"steel"})],
					       [<mekanism:atomicalloy>, <tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:atomicalloy>]]);

// so much equipment, layered upon
recipes.remove(<engineersdecor:small_lab_furnace>);
recipes.addShaped(<engineersdecor:small_lab_furnace>, [[<minecraft:hopper>, <tconstruct:seared:3>, null],
						       [<tconstruct:seared:3>, <minecraft:furnace>, <tconstruct:seared:3>],
						       [<tconstruct:seared:3>, <actuallyadditions:block_misc:9>, <tconstruct:seared:3>]]);
// aesthetic blending of magic / tech
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:34>, <immersiveengineering:metal:39>],
								  [<mekanism:ingot:1>, <opencomputers:material:6>, <mekanism:ingot:1>],
								  [<immersiveengineering:metal:39>, <mysticalagriculture:storage:1>,  <immersiveengineering:metal:39>]]);
recipes.remove(<actuallyadditions:item_mining_lens>);
recipes.addShaped(<actuallyadditions:item_mining_lens>, [[<actuallyadditions:item_crystal:5>, <tconstruct:clear_glass>, <actuallyadditions:item_crystal>],
							[<tconstruct:clear_glass>, <actuallyadditions:item_misc:18>, <tconstruct:clear_glass>],
							[<actuallyadditions:item_crystal>, <tconstruct:clear_glass>, <actuallyadditions:item_crystal:5>]]);
// combiner why tho??? make it easier, and use it for specific things.
mods.mekanism.combiner.removeAllRecipes();
recipes.remove(<mekanism:machineblock:2>);
recipes.addShaped(<mekanism:machineblock:2>, [[<tconstruct:large_plate>.withTag({Material: "electrum"}), <tconstruct:clear_glass>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
					      [<actuallyadditions:item_crystal:3>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:3>],
					      [<mekanism:reinforcedalloy>, <mysticalagriculture:storage>, <mekanism:controlcircuit:1>]]);

// TODO: see if we can drop the shaped reference to multiples?
recipes.removeShaped(<opencomputers:material:6> * 8, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
						[<ore:nuggetGold>, <ore:paper>, <ore:nuggetGold>],
						[null, <minecraft:redstone>, null]]);
recipes.addShaped(<opencomputers:material:6> * 4, [[<mekanism:nugget:6>, <immersiveengineering:material:20>, <mekanism:nugget:6>],
					      [<mysticalagriculture:crafting>, <mekanism:dust:5>, <mysticalagriculture:crafting>],
					      [<appliedenergistics2:material:5>, <minecraft:redstone>, <appliedenergistics2:material:5>]]);
// energetic infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<immersiveengineering:metal:39>, <opencomputers:material:7>, <immersiveengineering:metal:39>],
					      [<mysticalagriculture:crafting:32>, <actuallyadditions:item_battery>.withTag({Energy: 200000}), <mysticalagriculture:crafting:33>],
					      [<vehicle:wrench>.reuse(), <engineersdecor:small_electrical_furnace>, <immersiveengineering:metal_decoration0:3>]]);


//// mystcraft and legit magical balancing
// alternative ink vial
recipes.addShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <mysticalagriculture:water_essence>, <minecraft:glass_bottle>, <mysticalagriculture:water_essence>, <mysticalagriculture:water_essence>]);
// allow any water source
recipes.removeShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <minecraft:glass_bottle>, <minecraft:water_bucket>]);
recipes.addShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <minecraft:glass_bottle>, <ore:listAllwater>]);
// more integrated recipes
recipes.remove(<mystcraft:blockinkmixer>);
recipes.remove(<mystcraft:blockbookbinder>);
recipes.addShaped(<mystcraft:blockinkmixer>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
					     [<immersiveengineering:metal:39>, <tconstruct:clear_glass>, <immersiveengineering:metal:39>],
					     [<minecraft:stone>, <mekanism:machineblock2:11>, <minecraft:stone>]]);
recipes.addShaped(<mystcraft:blockbookbinder>, [[<ore:plankWood>, <minecraft:redstone_block>, <ore:plankWood>],
					       [<immersiveengineering:metal:39>, <railcraft:plate:6>, <immersiveengineering:metal:39>],
					       [<immersiveengineering:metal:39>, <minecraft:piston>, <immersiveengineering:metal:39>]]);
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

//// power is a whole thing. blend recipes.
// we do not want these power widgets
// ie caps for buffering only
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 0}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 1}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 2}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 3}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 4}));

recipes.remove(<actuallyadditions:item_battery>);
recipes.addShaped(<actuallyadditions:item_battery>, [[<immersiveengineering:metal:30>, <actuallyadditions:item_crystal>, <immersiveengineering:metal:30>],
						    [<railcraft:plate:2>, <immersiveengineering:metal:32>, <railcraft:plate:2>],
						    [<railcraft:plate:2>, <railcraft:plate:2>, <railcraft:plate:2>]]);
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							[<immersiveengineering:metal:30>, <actuallyadditions:item_battery>.withTag({Energy: 200000}), <immersiveengineering:metal:30>],
							[<immersiveengineering:treated_wood>, <actuallyadditions:item_crystal>, <immersiveengineering:treated_wood>]]);
// utility power
recipes.remove(<actuallyadditions:block_battery_box>);
recipes.addShaped(<actuallyadditions:block_battery_box>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:39>, <actuallyadditions:item_misc:7>, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
// generator progression
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <mysticalagriculture:coal_block>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <engineersdecor:small_lab_furnace>, <immersiveengineering:metal:39>]]);

// rice slime from pams
recipes.remove(<actuallyadditions:item_misc:12>);
recipes.addShaped(<actuallyadditions:item_misc:12> * 4, [[null, <harvestcraft:riceitem>, null],
						     	 [<harvestcraft:riceitem>, <minecraft:water_bucket>, <harvestcraft:riceitem>],
							 [null, <harvestcraft:riceitem>, null]]);

// assorted leather balancing
recipes.removeShapeless(<minecraft:leather> * 2, [<minecraft:leather_boots>]);

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

//// kitchen and cooking stuff
// love 2 grill
recipes.remove(<cfm:grill>);
recipes.addShaped(<cfm:grill>, [[<actuallyadditions:item_crystal>, <minecraft:iron_bars>, <actuallyadditions:item_crystal>],
			        [<engineersdecor:halfslab_sheetmetal_iron>, <engineersdecor:halfslab_sheetmetal_iron>, <engineersdecor:halfslab_sheetmetal_iron>],
				[<tconstruct:tough_tool_rod>.withTag({Material: "iron"}), null, <tconstruct:tough_tool_rod>.withTag({Material: "iron"})]]);


//// asst furnishings
recipes.remove(<cfm:mirror>);
recipes.addShaped(<cfm:mirror>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
				 [<immersiveengineering:sheetmetal_slab:3>, <minecraft:glass_pane>, <immersiveengineering:sheetmetal_slab:3>],
				 [<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>]]);
recipes.remove(<cfm:tv>);
recipes.addShaped(<cfm:tv>, [[<immersiveengineering:metal:39>, <tconstruct:tool_rod>.withTag({Material: "iron"}), <immersiveengineering:metal:39>],
			     [<immersiveengineering:metal:39>, <minecraft:glass>, <immersiveengineering:metal:39>],
			     [<actuallyadditions:block_misc:9>, <mekanism:controlcircuit>, <actuallyadditions:block_misc:9>]]);
recipes.remove(<cfm:modern_tv>);
recipes.addShaped(<cfm:modern_tv>, [[<tconstruct:large_plate>.withTag({Material: "iron"}), <actuallyadditions:block_misc:9>, <tconstruct:large_plate>.withTag({Material: "iron"})],
				    [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
				    [<actuallyadditions:block_misc:9>, <mekanism:controlcircuit>, <actuallyadditions:block_misc:9>]]);

recipes.remove(<cfm:tv_remote>);
recipes.addShaped(<cfm:tv_remote>, [[null, <actuallyadditions:item_crystal:5>, null],
				    [<immersiveengineering:metal:39>,<opencomputers:material:14>, <immersiveengineering:metal:39>],
				    [<actuallyadditions:item_crystal>, <immersiveengineering:material:8>, <actuallyadditions:item_crystal>]]);

//// parts and pieces and bobs
// AA casings
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4>, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <bibliocraft:framingsheet>, <tconstruct:large_plate>.withTag({Material: "wood"})],
						     [<bibliocraft:framingsheet>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:framingsheet>],
						     [<tconstruct:large_plate>.withTag({Material: "wood"}), <bibliocraft:framingsheet>, <tconstruct:large_plate>.withTag({Material: "wood"})]]);
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9>, [[<immersiveengineering:metal:39>, <bibliocraft:framingsheet>, <immersiveengineering:metal:39>],
						     [<bibliocraft:framingsheet>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:framingsheet>],
						     [<immersiveengineering:metal:39>, <bibliocraft:framingsheet>, <immersiveengineering:metal:39>]]);
// immersive engineering - redstone engineering block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 4, [[<mekanism:ingot:1>, <minecraft:redstone>, <mekanism:ingot:1>],
							       	   [<minecraft:redstone>, <immersiveengineering:metal:30>, <minecraft:redstone>],
								   [<mekanism:ingot:1>, <actuallyadditions:block_misc:9>, <mekanism:ingot:1>]]);
// light engineering block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 8, [[<railcraft:plate:2>, <immersiveengineering:material:8>, <railcraft:plate:2>],
							           [<mysticalagriculture:crafting:32>, <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:32>],
							           [<immersiveengineering:metal:30>, <immersiveengineering:material:8>, <immersiveengineering:metal:30>]]);
// heavy engineering block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5>, [[<immersiveengineering:metal:38>, <immersiveengineering:material:9>, <immersiveengineering:metal:38>],
							       [<alchemistry:ingot:22>, <mekanism:basicblock:8>, <alchemistry:ingot:22>],
							       [<immersiveengineering:metal:31>, <immersiveengineering:material:9>, <immersiveengineering:metal:31>]]);
// generator block
recipes.remove(<immersiveengineering:metal_decoration0:6>);
recipes.addShaped(<immersiveengineering:metal_decoration0:6>, [[<immersiveengineering:metal:38>, <tconstruct:large_plate>.withTag({Material: "electrum"}), <immersiveengineering:metal:38>],
							       [<immersiveengineering:metal:37>, <immersiveengineering:metal_device1:2>, <immersiveengineering:metal:37>],
							       [<immersiveengineering:metal:38>, <mysticalagriculture:storage>, <immersiveengineering:metal:38>]]);
// kinetic generator
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							   [<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>],
							   [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:33>]]);
//// dat glass????
// explosion proof glass
recipes.remove(<engineersdecor:panzerglass_block>);
recipes.addShaped(<engineersdecor:panzerglass_block> * 16, [[<extrautils2:decorativeglass>, <actuallyadditions:item_crystal:5>, <extrautils2:decorativeglass>],
						            [<actuallyadditions:item_crystal:5>, <tconstruct:tough_binding>.withTag({Material: "steel"}), <actuallyadditions:item_crystal:5>],
						            [<extrautils2:decorativeglass>, <actuallyadditions:item_crystal:5>, <extrautils2:decorativeglass>]]);
// dino proof glass
mods.jei.JEI.removeAndHide(<fossil:dense_sand>);
furnace.remove(<fossil:strong_glass>);
mods.mekanism.chemical.injection.addRecipe(<engineersdecor:panzerglass_block>, <gas:ethene>, <fossil:strong_glass>);

// eu2 aesthetic glass
furnace.remove(<extrautils2:decorativeglass>);
recipes.addShaped(<extrautils2:decorativeglass> * 8, [[<tconstruct:clear_glass>, null, <tconstruct:clear_glass>],
						      [<minecraft:glass>, <tconstruct:clear_glass>, <minecraft:glass>],
						      [<tconstruct:clear_glass>, null, <tconstruct:clear_glass>]]);
recipes.remove(<extrautils2:decorativeglass:1>);
recipes.addShaped(<extrautils2:decorativeglass:1> * 8, [[<tconstruct:clear_glass>, <minecraft:glass>, <tconstruct:clear_glass>],
						        [<minecraft:glass>, null, <minecraft:glass>],
							[<tconstruct:clear_glass>, <minecraft:glass>, <tconstruct:clear_glass>]]);
recipes.remove(<extrautils2:decorativeglass:2>);
recipes.addShaped(<extrautils2:decorativeglass:2> * 8, [[<minecraft:glass>, <tconstruct:clear_glass>, <minecraft:glass>],
						        [<tconstruct:clear_glass>, null, <tconstruct:clear_glass>],
							[<minecraft:glass>, <tconstruct:clear_glass>, <minecraft:glass>]]);
recipes.remove(<extrautils2:decorativeglass:5> * 8);
recipes.addShaped(<extrautils2:decorativeglass:5>, [[<tconstruct:clear_glass>, null, <tconstruct:clear_glass>],
						    [null, <minecraft:redstone_block>, null],
						    [<tconstruct:clear_glass>, null, <tconstruct:clear_glass>]]);
// eu2 glow glass
mods.mekanism.chemical.injection.addRecipe(<extrautils2:decorativesolid:4>, <gas:ethene>, <extrautils2:decorativeglass:4>);
// eu2 dark glass
mods.mekanism.chemical.injection.addRecipe(<extrautils2:decorativesolid:4>, <gas:ethene>, <extrautils2:decorativeglass:3>);
// TODO eu2 ineffableglass ?? is it 6?
// mods.mekanism.chemical.injection.addRecipe(<extrautils2:decorativesolid:4>, <gas:hydrogen>, <extrautils2:decorativeglass:6>);
// quartz glass
recipes.remove(<appliedenergistics2:quartz_glass>);
mods.mekanism.combiner.addRecipe(<extrautils2:decorativesolid:4>, <ore:dustCertusQuartz> | <ore:dustNetherQuartz>, <appliedenergistics2:quartz_glass>);

//// dino time
recipes.remove(<fossil:cultivate>);
recipes.addShaped(<fossil:cultivate>, [[<tconstruct:clear_glass>, <immersiveengineering:metal_device1:1>, <tconstruct:clear_glass>],
				       [<tconstruct:clear_glass>, <forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}), <tconstruct:clear_glass>],
				       [<vehicle:wrench>.reuse(), <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:33>]]);
recipes.remove(<fossil:worktable>);
recipes.addShaped(<fossil:worktable>, [[null, null, null],
				       [null, <tconstruct:large_plate>.withTag({Material: "paper"}), null],
				       [null, <tconstruct:tooltables>, null]]);
recipes.remove(<fossil:sifter>);
recipes.addShaped(<fossil:sifter>, [[<vehicle:wrench>.reuse(), <minecraft:iron_bars>, null],[<immersiveengineering:metal:31>, <vehicle:electric_engine>, <immersiveengineering:metal:31>], [<immersiveengineering:metal:31>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:31>]]);
recipes.remove(<fossil:analyzer>);
recipes.addShaped(<fossil:analyzer>, [[<immersiveengineering:metal:31>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
				      [<vehicle:wrench>.reuse(), <opencomputers:material:8>, <immersiveengineering:metal:31>],
				      [<alchemistry:element:7>, <actuallyadditions:block_misc:9>, <mysticalagriculture:ingot_storage:1>]]);
recipes.remove(<fossil:bubble_blower>);
recipes.addShaped(<fossil:bubble_blower>, [[null, null, null],
					   [<vehicle:wrench>.reuse(), <mekanism:compressedredstone>, <cyclicmagic:fan>],
					   [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:39>]]);
recipes.remove(<fossil:feeder>);
recipes.addShaped(<fossil:feeder>, [[<vehicle:wrench>.reuse(), <tconstruct:clear_glass>, <tconstruct:clear_glass>],
				    [<immersiveengineering:metal:39>, <minecraft:bucket>, <immersiveengineering:metal:39>],
				    [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:4>, <immersiveengineering:metal:39>]]);
