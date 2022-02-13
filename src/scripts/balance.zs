import crafttweaker.item.IItemStack;
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

//// ore balancing
// blocks only from tinkers
recipes.removeShaped(<minecraft:iron_block>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>,<minecraft:iron_ingot>],
                                             [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
                                             [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.removeShaped(<minecraft:gold_block>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>,<minecraft:gold_ingot>],
                                             [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
                                             [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
// copper
recipes.removeShaped(<mekanism:basicblock:12>, [[<mekanism:ingot:5>, <mekanism:ingot:5>,<mekanism:ingot:5>],
                                               [<mekanism:ingot:5>, <mekanism:ingot:5>, <mekanism:ingot:5>],
                                               [<mekanism:ingot:5>, <mekanism:ingot:5>, <mekanism:ingot:5>]]);
// lead
recipes.removeShaped(<immersiveengineering:storage:2>, [[<immersiveengineering:metal:2>, <immersiveengineering:metal:2>,<immersiveengineering:metal:2>],
                                               [<immersiveengineering:metal:2>, <immersiveengineering:metal:2>, <immersiveengineering:metal:2>],
                                               [<immersiveengineering:metal:2>, <immersiveengineering:metal:2>, <immersiveengineering:metal:2>]]);


//// paper and paper products
// craftable from sawdust same as sugarcane
recipes.addShaped(<minecraft:paper> * 3, [[null, null, null],[<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>], [null, null, null]]);
recipes.removeShaped(<minecraft:paper> * 6, [[null, null, null], [<ore:pulpWood> | <ore:dustWood>, <ore:pulpWood> | <ore:dustWood>, <ore:pulpWood> | <ore:dustWood>], [null, null, null]]);
// clipboard aesthetic
recipes.removeShaped(<bibliocraft:biblioclipboard>, [[<minecraft:dye>, null, <minecraft:feather>],
						    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
						    [null, <minecraft:wooden_pressure_plate>, null]]);
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
recipes.addShaped(<waystones:warp_stone>, [[<actuallyadditions:item_crystal_empowered>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered:1>],
					  [<mysticalagriculture:crafting:2>,
					  <mekanism:teleportationcore>,
					  <mysticalagriculture:crafting:2>],
					  [<actuallyadditions:item_crystal_empowered:1>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered>]]);
recipes.removeShaped(<waystones:warp_stone>, [[<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>],
					      [<minecraft:ender_pearl>, <minecraft:emerald>, <minecraft:ender_pearl>],
					      [<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>]]);

//// skilled construction but not use of furniture
// sitting things
recipes.removeShaped(<cfm:chair_oak>, [[<minecraft:planks>, null, null],
				      [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				      [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.addShaped(<cfm:chair_oak>, [[<minecraft:planks>, null, null],
				   [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				   [<minecraft:planks>, <immersiveengineering:tool>.reuse(), <minecraft:planks>]]);
recipes.removeShaped(<cfm:chair_spruce>, [[<minecraft:planks:1>, null, null],
				      [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				      [<minecraft:planks:1>, null, <minecraft:planks:1>]]);
recipes.addShaped(<cfm:chair_spruce>, [[<minecraft:planks:1>, null, null],
				      [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				      [<minecraft:planks:1>, <immersiveengineering:tool>.reuse(), <minecraft:planks:1>]]);
recipes.removeShaped(<cfm:chair_birch>, [[<minecraft:planks:2>, null, null],
					[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:planks:2>, null, <minecraft:planks:2>]]);
recipes.addShaped(<cfm:chair_birch>, [[<minecraft:planks:2>, null, null],
				     [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				     [<minecraft:planks:2>, <immersiveengineering:tool>.reuse(), <minecraft:planks:2>]]);
recipes.removeShaped(<cfm:chair_jungle>, [[<minecraft:planks:3>, null, null],
					[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:planks:3>, null, <minecraft:planks:3>]]);
recipes.addShaped(<cfm:chair_jungle>, [[<minecraft:planks:3>, null, null],
				     [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				     [<minecraft:planks:3>, <immersiveengineering:tool>.reuse(), <minecraft:planks:3>]]);
recipes.removeShaped(<cfm:chair_acacia>, [[<minecraft:planks:4>, null, null],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, null, <minecraft:planks:4>]]);
recipes.addShaped(<cfm:chair_acacia>, [[<minecraft:planks:4>, null, null],
				     [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
				     [<minecraft:planks:4>, <immersiveengineering:tool>.reuse(), <minecraft:planks:4>]]);
recipes.removeShaped(<cfm:chair_dark_oak>, [[<minecraft:planks:5>, null, null],
					[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:planks:5>, null, <minecraft:planks:5>]]);
recipes.removeShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],
					   [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					   [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<minecraft:planks:5>, null, null],
				     [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				     [<minecraft:planks:5>, <immersiveengineering:tool>.reuse(), <minecraft:planks:5>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],
				     [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				     [<plants2:planks:2>, <immersiveengineering:tool>.reuse(), <plants2:planks:2>]]);
recipes.removeShaped(<cfm:chair_diorite>, [[<minecraft:stone:3>, null, null],
					[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					[<minecraft:stone:3>, null, <minecraft:stone:3>]]);
recipes.addShaped(<cfm:chair_diorite>, [[<minecraft:stone:3>, null, null],
				     [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				     [<minecraft:stone:3>, <immersiveengineering:tool>.reuse(), <minecraft:stone:3>]]);
recipes.removeShaped(<cfm:chair_granite>, [[<minecraft:stone:1>, null, null],
					[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					[<minecraft:stone:1>, null, <minecraft:stone:1>]]);
recipes.addShaped(<cfm:chair_granite>, [[<minecraft:stone:1>, null, null],
				     [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				     [<minecraft:stone:1>, <immersiveengineering:tool>.reuse(), <minecraft:stone:1>]]);
recipes.removeShaped(<cfm:chair_andesite>, [[<minecraft:stone:5>, null, null],
					[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					[<minecraft:stone:5>, null, <minecraft:stone:5>]]);
recipes.addShaped(<cfm:chair_andesite>, [[<minecraft:stone:5>, null, null],
				     [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				     [<minecraft:stone:5>, <immersiveengineering:tool>.reuse(), <minecraft:stone:5>]]);
recipes.removeShaped(<cfm:chair_stone>, [[<minecraft:cobblestone>, null, null],
					[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					[<minecraft:cobblestone>, null, <minecraft:cobblestone>]]);
recipes.addShaped(<cfm:chair_stone>, [[<minecraft:cobblestone>, null, null],
				     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				     [<minecraft:cobblestone>, <immersiveengineering:tool>.reuse(), <minecraft:cobblestone>]]);
recipes.removeShaped(<cfm:bench>, [[null, null, null],
				  [<minecraft:log>, <minecraft:planks>, <minecraft:log>],
				  [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.addShaped(<cfm:bench>, [[null, null, null],
			       [<minecraft:log>, <minecraft:planks>, <minecraft:log>],
			       [<minecraft:planks>, <immersiveengineering:tool>, <minecraft:planks>]]);
recipes.removeShaped(<cfm:park_bench_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					   [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					   [<minecraft:log>, <architecturecraft:hammer>, <minecraft:log>]]);
recipes.addShaped(<cfm:park_bench_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					[<minecraft:log>, <architecturecraft:hammer>, <minecraft:log>]]);
recipes.removeShaped(<cfm:park_bench_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					   [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					   [<minecraft:log:1>, <architecturecraft:hammer>, <minecraft:log:1>]]);
recipes.addShaped(<cfm:park_bench_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					[<minecraft:log:1>, <architecturecraft:hammer>, <minecraft:log:1>]]);
recipes.removeShaped(<cfm:park_bench_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					   [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					   [<minecraft:log:2>, <architecturecraft:hammer>, <minecraft:log:2>]]);
recipes.addShaped(<cfm:park_bench_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:log:2>, <architecturecraft:hammer>, <minecraft:log:2>]]);
recipes.removeShaped(<cfm:park_bench_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					   [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					   [<minecraft:log:3>, <architecturecraft:hammer>, <minecraft:log:3>]]);
recipes.addShaped(<cfm:park_bench_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:log:3>, <architecturecraft:hammer>, <minecraft:log:3>]]);
recipes.removeShaped(<cfm:park_bench_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					   [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					   [<minecraft:log:4>, <architecturecraft:hammer>, <minecraft:log:4>]]);
recipes.addShaped(<cfm:park_bench_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:log:4>, <architecturecraft:hammer>, <minecraft:log:4>]]);
recipes.removeShaped(<cfm:park_bench_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					   [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					   [<minecraft:log:4>, <architecturecraft:hammer>, <minecraft:log:4>]]);
recipes.addShaped(<cfm:park_bench_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:log:4>, <architecturecraft:hammer>, <minecraft:log:4>]]);
recipes.removeShaped(<cfm:park_bench_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					   [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					   [<minecraft:log:5>, null, <minecraft:log:5>]]);
recipes.addShaped(<cfm:park_bench_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:log:5>, <architecturecraft:hammer>, <minecraft:log:5>]]);
recipes.removeShaped(<cfm:park_bench_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					   [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					   [<minecraft:log:5>, <architecturecraft:hammer>, <minecraft:log:5>]]);
recipes.addShaped(<cfm:park_bench_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					[<plants2:log_0>, <architecturecraft:hammer>, <plants2:log_0>]]);

// coffee table
recipes.removeShaped(<cfm:coffee_table_oak>, [[null, null, null],
					     [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					     [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.addShaped(<cfm:coffee_table_oak>, [[null, null, null],
					  [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					  [<minecraft:planks>, <immersiveengineering:tool>, <minecraft:planks>]]);
recipes.removeShaped(<cfm:coffee_table_spruce>, [[null, null, null],
					     [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					     [<minecraft:planks:1>, null, <minecraft:planks:1>]]);
recipes.addShaped(<cfm:coffee_table_spruce>, [[null, null, null],
					  [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					  [<minecraft:planks:1>, <immersiveengineering:tool>, <minecraft:planks:1>]]);
recipes.removeShaped(<cfm:coffee_table_birch>, [[null, null, null],
					     [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					     [<minecraft:planks:2>, null, <minecraft:planks:2>]]);
recipes.addShaped(<cfm:coffee_table_birch>, [[null, null, null],
					  [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					  [<minecraft:planks:2>, <immersiveengineering:tool>, <minecraft:planks:2>]]);
recipes.removeShaped(<cfm:coffee_table_jungle>, [[null, null, null],
					     [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					     [<minecraft:planks:3>, null, <minecraft:planks:3>]]);
recipes.addShaped(<cfm:coffee_table_jungle>, [[null, null, null],
					  [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					  [<minecraft:planks:3>, <immersiveengineering:tool>, <minecraft:planks:3>]]);
recipes.removeShaped(<cfm:coffee_table_acacia>, [[null, null, null],
					     [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					     [<minecraft:planks:4>, null, <minecraft:planks:4>]]);
recipes.addShaped(<cfm:coffee_table_acacia>, [[null, null, null],
					  [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					  [<minecraft:planks:4>, <immersiveengineering:tool>, <minecraft:planks:4>]]);
recipes.removeShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					     [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					     [<minecraft:planks:5>, null, <minecraft:planks:5>]]);
recipes.removeShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					     [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					     [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					  [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					  [<minecraft:planks:5>, <immersiveengineering:tool>, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],
					  [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					  [<plants2:planks:2>, <immersiveengineering:tool>, <plants2:planks:2>]]);
recipes.removeShaped(<cfm:coffee_table_diorite>, [[null, null, null],
					     [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					     [<minecraft:stone:3>, null, <minecraft:stone:3>]]);
recipes.addShaped(<cfm:coffee_table_diorite>, [[null, null, null],
					  [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					  [<minecraft:stone:3>, <immersiveengineering:tool>, <minecraft:stone:3>]]);
recipes.removeShaped(<cfm:coffee_table_granite>, [[null, null, null],
					     [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					     [<minecraft:stone:1>, null, <minecraft:stone:1>]]);
recipes.addShaped(<cfm:coffee_table_granite>, [[null, null, null],
					  [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					  [<minecraft:stone:1>, <immersiveengineering:tool>, <minecraft:stone:1>]]);
recipes.removeShaped(<cfm:coffee_table_andesite>, [[null, null, null],
					     [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					     [<minecraft:stone:5>, null, <minecraft:stone:5>]]);
recipes.addShaped(<cfm:coffee_table_andesite>, [[null, null, null],
					  [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					  [<minecraft:stone:5>, <immersiveengineering:tool>, <minecraft:stone:5>]]);
recipes.removeShaped(<cfm:coffee_table_stone>, [[null, null, null],
					     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					     [<minecraft:cobblestone>, null, <minecraft:cobblestone>]]);
recipes.addShaped(<cfm:coffee_table_stone>, [[null, null, null],
					  [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					  [<minecraft:cobblestone>, <immersiveengineering:tool>, <minecraft:cobblestone>]]);
recipes.removeShaped(<cfm:modern_coffee_table>, [[null, null, null],
						[<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
						[<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.addShaped(<cfm:modern_coffee_table>, [[null, null, null],
					     [<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
					     [<minecraft:concrete:8>, <immersiveengineering:tool>, <minecraft:concrete:8>]]);
// other tables
recipes.removeShaped(<cfm:table_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				      [null, <minecraft:planks>, null],
				      [null, <minecraft:planks>, null]]);
recipes.addShaped(<cfm:table_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				   [null, <minecraft:planks>, null],
				   [<immersiveengineering:tool>, <minecraft:planks>, null]]);
recipes.removeShaped(<cfm:table_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				      [null, <minecraft:planks:1>, null],
				      [null, <minecraft:planks:1>, null]]);
recipes.addShaped(<cfm:table_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				   [null, <minecraft:planks:1>, null],
				   [<immersiveengineering:tool>, <minecraft:planks:1>, null]]);
recipes.removeShaped(<cfm:table_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				      [null, <minecraft:planks:2>, null],
				      [null, <minecraft:planks:2>, null]]);
recipes.addShaped(<cfm:table_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				   [null, <minecraft:planks:2>, null],
				   [<immersiveengineering:tool>, <minecraft:planks:2>, null]]);
recipes.removeShaped(<cfm:table_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				      [null, <minecraft:planks:3>, null],
				      [null, <minecraft:planks:3>, null]]);
recipes.addShaped(<cfm:table_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				   [null, <minecraft:planks:3>, null],
				   [<immersiveengineering:tool>, <minecraft:planks:3>, null]]);
recipes.removeShaped(<cfm:table_acacia>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				      [null, <minecraft:planks:4>, null],
				      [null, <minecraft:planks:4>, null]]);
recipes.addShaped(<cfm:table_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
				   [null, <minecraft:planks:4>, null],
				   [<immersiveengineering:tool>, <minecraft:planks:4>, null]]);
recipes.removeShaped(<cfm:table_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				      [null, <minecraft:planks:5>, null],
				      [null, <minecraft:planks:5>, null]]);
recipes.addShaped(<cfm:table_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				   [null, <minecraft:planks:5>, null],
				   [<immersiveengineering:tool>, <minecraft:planks:5>, null]]);
recipes.removeShaped(<cfm:table_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				      [null, <plants2:planks:2>, null],
				      [null, <plants2:planks:2>, null]]);
recipes.addShaped(<cfm:table_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				   [null, <plants2:planks:2>, null],
				   [<immersiveengineering:tool>, <plants2:planks:2>, null]]);
recipes.removeShaped(<cfm:table_diorite>, [[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				      [null, <minecraft:stone:3>, null],
				      [null, <minecraft:stone:3>, null]]);
recipes.addShaped(<cfm:table_diorite>, [[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				   [null, <minecraft:stone:3>, null],
				   [<immersiveengineering:tool>, <minecraft:stone:3>, null]]);
recipes.removeShaped(<cfm:table_granite>, [[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				      [null, <minecraft:stone:1>, null],
				      [null, <minecraft:stone:1>, null]]);
recipes.addShaped(<cfm:table_granite>, [[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				   [null, <minecraft:stone:1>, null],
				   [<immersiveengineering:tool>, <minecraft:stone:1>, null]]);
recipes.removeShaped(<cfm:table_andesite>, [[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				      [null, <minecraft:stone:5>, null],
				      [null, <minecraft:stone:5>, null]]);
recipes.addShaped(<cfm:table_andesite>, [[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				   [null, <minecraft:stone:5>, null],
				   [<immersiveengineering:tool>, <minecraft:stone:5>, null]]);
recipes.removeShaped(<cfm:table_stone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				      [null, <minecraft:cobblestone>, null],
				      [null, <minecraft:cobblestone>, null]]);
recipes.addShaped(<cfm:table_stone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				   [null, <minecraft:cobblestone>, null],
				   [<immersiveengineering:tool>, <minecraft:cobblestone>, null]]);
recipes.removeShaped(<cfm:table_outdoor>, [[<minecraft:log>, <minecraft:stained_glass:12>,<minecraft:log>],
					  [<minecraft:planks>, null, <minecraft:planks>],
					  [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.addShaped(<cfm:table_outdoor>, [[<minecraft:log>, <minecraft:stained_glass:12>, <minecraft:log>],
				       [<minecraft:planks>, <immersiveengineering:tool>, <minecraft:planks>],
				       [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.removeShaped(<cfm:modern_table>, [[<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
					 [<minecraft:concrete:8>, null, <minecraft:concrete:8>],
					 [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.addShaped(<cfm:modern_table>, [[<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
				      [<minecraft:concrete:8>, <immersiveengineering:tool>, <minecraft:concrete:8>],
				      [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.removeShaped(<cfm:modern_table_outdoor>, [[<minecraft:concrete>, <minecraft:glass>, <minecraft:concrete>],
						 [<minecraft:concrete:8>, null, <minecraft:concrete:8>],
						 [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.addShaped(<cfm:modern_table_outdoor>, [[<minecraft:concrete>, <minecraft:glass>, <minecraft:concrete>],
					      [<minecraft:concrete:8>, <immersiveengineering:tool>, <minecraft:concrete:8>],
					      [<minecraft:concrete:8>, null, <minecraft:concrete:8>]]);
recipes.removeShaped(<bibliocraft:table>, [[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
					  [null, <minecraft:planks>, null],
					  [null, <minecraft:planks>, null]]);
recipes.addShaped(<bibliocraft:table>, [[<minecraft:wooden_slab>, <minecraft:wooden_slab>, <minecraft:wooden_slab>],
				       [null, <minecraft:planks>, <architecturecraft:hammer>],
				       [null, <minecraft:planks>, null]]);
// cabinets are cool
recipes.removeShaped(<cfm:bedside_cabinet_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
						[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>],
						[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>]]);
recipes.addShaped(<cfm:bedside_cabinet_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks>, <ore:chestWood>, <minecraft:planks>],
					     [<minecraft:planks>, <ore:chestWood>, <minecraft:planks>]]);
recipes.removeShaped(<cfm:bedside_cabinet_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
						[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>],
						[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>]]);
recipes.addShaped(<cfm:bedside_cabinet_spruce>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:1>, <ore:chestWood>, <minecraft:planks:1>],
					     [<minecraft:planks:1>, <ore:chestWood>, <minecraft:planks:1>]]);
recipes.removeShaped(<cfm:bedside_cabinet_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
						[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>],
						[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>]]);
recipes.addShaped(<cfm:bedside_cabinet_birch>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:2>, <ore:chestWood>, <minecraft:planks:2>],
					     [<minecraft:planks:2>, <ore:chestWood>, <minecraft:planks:2>]]);
recipes.removeShaped(<cfm:bedside_cabinet_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
						[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>],
						[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>]]);
recipes.addShaped(<cfm:bedside_cabinet_jungle>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:3>, <ore:chestWood>, <minecraft:planks:3>],
					     [<minecraft:planks:3>, <ore:chestWood>, <minecraft:planks:3>]]);
recipes.removeShaped(<cfm:bedside_cabinet_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
						[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>],
						[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>]]);
recipes.addShaped(<cfm:bedside_cabinet_acacia>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:4>, <ore:chestWood>, <minecraft:planks:4>],
					     [<minecraft:planks:4>, <ore:chestWood>, <minecraft:planks:4>]]);
recipes.removeShaped(<cfm:bedside_cabinet_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
						[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>],
						[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:planks:5>, <ore:chestWood>, <minecraft:planks:5>],
					     [<minecraft:planks:5>, <ore:chestWood>, <minecraft:planks:5>]]);
recipes.removeShaped(<cfm:bedside_cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
						[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>],
						[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<plants2:planks:2>, <ore:chestWood>, <plants2:planks:2>],
					     [<plants2:planks:2>, <ore:chestWood>, <plants2:planks:2>]]);
recipes.removeShaped(<cfm:bedside_cabinet_diorite>, [[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
						[<minecraft:stone:3>, <minecraft:chest>, <minecraft:stone:3>],
						[<minecraft:stone:3>, <minecraft:chest>, <minecraft:stone:3>]]);
recipes.addShaped(<cfm:bedside_cabinet_diorite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:3>, <ore:chestWood>, <minecraft:stone:3>],
					     [<minecraft:stone:3>, <ore:chestWood>, <minecraft:stone:3>]]);
recipes.removeShaped(<cfm:bedside_cabinet_granite>, [[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
						[<minecraft:stone:1>, <minecraft:chest>, <minecraft:stone:1>],
						[<minecraft:stone:1>, <minecraft:chest>, <minecraft:stone:1>]]);
recipes.addShaped(<cfm:bedside_cabinet_granite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:1>, <ore:chestWood>, <minecraft:stone:1>],
					     [<minecraft:stone:1>, <ore:chestWood>, <minecraft:stone:1>]]);
recipes.removeShaped(<cfm:bedside_cabinet_andesite>, [[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
						[<minecraft:stone:5>, <minecraft:chest>, <minecraft:stone:5>],
						[<minecraft:stone:5>, <minecraft:chest>, <minecraft:stone:5>]]);
recipes.addShaped(<cfm:bedside_cabinet_andesite>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:stone:5>, <ore:chestWood>, <minecraft:stone:5>],
					     [<minecraft:stone:5>, <ore:chestWood>, <minecraft:stone:5>]]);
recipes.removeShaped(<cfm:bedside_cabinet_stone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
						[<minecraft:cobblestone>, <minecraft:chest>, <minecraft:cobblestone>],
						[<minecraft:cobblestone>, <minecraft:chest>, <minecraft:cobblestone>]]);
recipes.addShaped(<cfm:bedside_cabinet_stone>, [[<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
					     [<minecraft:cobblestone>, <ore:chestWood>, <minecraft:cobblestone>],
					     [<minecraft:cobblestone>, <ore:chestWood>, <minecraft:cobblestone>]]);
recipes.removeShaped(<cfm:cabinet_oak>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
					[<minecraft:planks>, <minecraft:chest>, <minecraft:planks>],
					[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);
recipes.addShaped(<cfm:cabinet_oak>, [[<minecraft:planks>, <bibliocraft:framingsheet>, <minecraft:planks>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks>, <bibliocraft:framingsheet>, <minecraft:planks>]]);
recipes.removeShaped(<cfm:cabinet_spruce>, [[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
					[<minecraft:planks:1>, <minecraft:chest>, <minecraft:planks:1>],
					[<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>]]);
recipes.addShaped(<cfm:cabinet_spruce>, [[<minecraft:planks:1>, <bibliocraft:framingsheet>, <minecraft:planks:1>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:1>, <bibliocraft:framingsheet>, <minecraft:planks:1>]]);
recipes.removeShaped(<cfm:cabinet_birch>, [[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:planks:2>, <minecraft:chest>, <minecraft:planks:2>],
					[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>]]);
recipes.addShaped(<cfm:cabinet_birch>, [[<minecraft:planks:2>, <bibliocraft:framingsheet>, <minecraft:planks:2>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:2>, <bibliocraft:framingsheet>, <minecraft:planks:2>]]);
recipes.removeShaped(<cfm:cabinet_jungle>, [[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:planks:3>, <minecraft:chest>, <minecraft:planks:3>],
					[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>]]);
recipes.addShaped(<cfm:cabinet_jungle>, [[<minecraft:planks:3>, <bibliocraft:framingsheet>, <minecraft:planks:3>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:3>, <bibliocraft:framingsheet>, <minecraft:planks:3>]]);
recipes.removeShaped(<cfm:cabinet_acacia>, [[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, <minecraft:chest>, <minecraft:planks:4>],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>]]);
recipes.addShaped(<cfm:cabinet_acacia>, [[<minecraft:planks:4>, <bibliocraft:framingsheet>, <minecraft:planks:4>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:4>, <bibliocraft:framingsheet>, <minecraft:planks:4>]]);
recipes.removeShaped(<cfm:cabinet_dark_oak>, [[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:planks:5>, <minecraft:chest>, <minecraft:planks:5>],
					[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<minecraft:planks:5>, <bibliocraft:framingsheet>, <minecraft:planks:5>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:planks:5>, <bibliocraft:framingsheet>, <minecraft:planks:5>]]);
recipes.removeShaped(<cfm:cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>],
					[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<plants2:planks:2>, <bibliocraft:framingsheet>, <plants2:planks:2>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<plants2:planks:2>, <bibliocraft:framingsheet>, <plants2:planks:2>]]);
recipes.removeShaped(<cfm:cabinet_diorite>, [[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					[<minecraft:stone:3>, <minecraft:chest>, <minecraft:stone:3>],
					[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>]]);
recipes.addShaped(<cfm:cabinet_diorite>, [[<minecraft:stone:3>, <bibliocraft:framingsheet>, <minecraft:stone:3>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:3>, <bibliocraft:framingsheet>, <minecraft:stone:3>]]);
recipes.removeShaped(<cfm:cabinet_granite>, [[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					[<minecraft:stone:1>, <minecraft:chest>, <minecraft:stone:1>],
					[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>]]);
recipes.addShaped(<cfm:cabinet_granite>, [[<minecraft:stone:1>, <bibliocraft:framingsheet>, <minecraft:stone:1>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:1>, <bibliocraft:framingsheet>, <minecraft:stone:1>]]);
recipes.removeShaped(<cfm:cabinet_andesite>, [[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					[<minecraft:stone:5>, <minecraft:chest>, <minecraft:stone:5>],
					[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>]]);
recipes.addShaped(<cfm:cabinet_andesite>, [[<minecraft:stone:5>, <bibliocraft:framingsheet>, <minecraft:stone:5>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:stone:5>, <bibliocraft:framingsheet>, <minecraft:stone:5>]]);
recipes.removeShaped(<cfm:cabinet_stone>, [[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					[<minecraft:cobblestone>, <minecraft:chest>, <minecraft:cobblestone>],
					[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<cfm:cabinet_stone>, [[<minecraft:cobblestone>, <bibliocraft:framingsheet>, <minecraft:cobblestone>],
				     [<bibliocraft:framingsheet>, <ore:chestWood>, <bibliocraft:framingsheet>],
				     [<minecraft:cobblestone>, <bibliocraft:framingsheet>, <minecraft:cobblestone>]]);

//// equipment balancing
// steel is gated exclusively on blast furnace
mods.mekanism.infuser.removeRecipe(<mekanism:enrichediron>, <minecraft:iron_ingot>, "CARBON");
mods.mekanism.infuser.removeRecipe(<mekanism:otherdust:1>, <mekanism:enrichediron>, "CARBON");
// advanced hammers gated on creosote
recipes.removeShaped(<vehicle:hammer>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
				       [null, <minecraft:iron_ingot>, null],
				       [null, <minecraft:concrete:7>, null]]);
recipes.addShaped(<vehicle:hammer>, [[<tconstruct:hammer_head>, <mekanism:ingot:1>, <tconstruct:hammer_head>],
				    [null, <immersiveengineering:material:1>, null],
				    [null, <immersiveengineering:material>, null]]);
recipes.removeShaped(<architecturecraft:hammer>, [[<ore:ingotIron>, <ore:ingotIron>, null],
						 [<ore:dyeOrange>, <ore:stickWood>, <ore:ingotIron>],
						 [<ore:dyeOrange>, <ore:stickWood>, null]]);
recipes.addShaped(<architecturecraft:hammer>, [[<tconstruct:hammer_head>, <immersiveengineering:metal:39>, <immersiveengineering:material:1>],
					      [null, <immersiveengineering:material>, null],
					      [null, <immersiveengineering:material>, null]]);
// so many tools
recipes.removeShaped(<extrautils2:wateringcan:1000>, [[<minecraft:stone:*>, null, null],
						     [<minecraft:stone:*>, <minecraft:bowl:*>, <minecraft:stone:*>],
						     [null, <minecraft:stone:*>, null]]);
recipes.addShaped(<extrautils2:wateringcan:1000>, [[<immersiveengineering:metal:30>, null, null],
						  [<immersiveengineering:metal:30>, <minecraft:bucket>, <tconstruct:tough_tool_rod>.withTag({Material:"copper"})],
						  [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
recipes.removeShaped(<minecraft:bucket>, [[<ore:ingotIron>, null, <ore:ingotIron>],
				   [null, <ore:ingotIron>, null]]);
recipes.addShaped(<minecraft:bucket>, [[null, <immersiveengineering:material:1>, null],
				      [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
				      [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
// fluid storage
recipes.removeShaped(<mekanism:machineblock2:11>.withTag({tier:0}), [[<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>],
						  [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
						  [<minecraft:redstone>, <minecraft:iron_ingot>, <minecraft:redstone>]]);
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:0}), [[<tconstruct:clear_glass>, <railcraft:plate:2>, <tconstruct:clear_glass>],
					       [<railcraft:plate:2>, null, <railcraft:plate:2>],
					       [<tconstruct:clear_glass>, <railcraft:plate:2>, <tconstruct:clear_glass>]]);
recipes.removeShaped(<mekanism:machineblock2:11>.withTag({tier:1}), [[<mekanism:enrichedalloy>, <minecraft:iron_ingot>, <mekanism:enrichedalloy>],
						  [<minecraft:iron_ingot>, <mekanism:machineblock2:11>, <minecraft:iron_ingot>],
						  [<mekanism:enrichedalloy>, <minecraft:iron_ingot>, <mekanism:enrichedalloy>]]);
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:1}), [[<mekanism:enrichedalloy>, <immersiveengineering:metal:39>, <mekanism:enrichedalloy>],
					       [<immersiveengineering:metal:39>, <mekanism:machineblock2:11>, <immersiveengineering:metal:39>],
					       [<mekanism:enrichedalloy>, <immersiveengineering:metal:39>, <mekanism:enrichedalloy>]]);
recipes.removeShaped(<mekanism:machineblock2:11>.withTag({tier:2}), [[<mekanism:reinforcedalloy>, <minecraft:iron_ingot>, <mekanism:reinforcedalloy>],
						  [<minecraft:iron_ingot>, <mekanism:machineblock2:11>, <minecraft:iron_ingot>],
						  [<mekanism:reinforcedalloy>, <minecraft:iron_ingot>, <mekanism:reinforcedalloy>]]);
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:2}), [[<mekanism:reinforcedalloy>, <tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:reinforcedalloy>],
					       [<tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:machineblock2:11>.withTag({tier:1}), <tconstruct:large_plate>.withTag({Material:"iron"})],
					       [<mekanism:reinforcedalloy>, <tconstruct:large_plate>.withTag({Material:"iron"}), <mekanism:reinforcedalloy>]]);
recipes.removeShaped(<mekanism:machineblock2:11>.withTag({tier:3}), [[<mekanism:atomicalloy>, <minecraft:iron_ingot>, <mekanism:atomicalloy>],
						  [<minecraft:iron_ingot>, <mekanism:machineblock2:11>, <minecraft:iron_ingot>],
						  [<mekanism:atomicalloy>, <minecraft:iron_ingot>, <mekanism:atomicalloy>]]);
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier:3}), [[<mekanism:atomicalloy>, <tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:atomicalloy>],
					       [<tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:machineblock2:11>.withTag({tier:2}), <tconstruct:large_plate>.withTag({Material:"steel"})],
					       [<mekanism:atomicalloy>, <tconstruct:large_plate>.withTag({Material:"steel"}), <mekanism:atomicalloy>]]);
// aesthetic blending of magic / tech
recipes.removeShaped(<actuallyadditions:block_atomic_reconstructor>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
								     [<ore:dustRedstone>, <actuallyadditions:block_misc:9>, <ore:dustRedstone>],
								     [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:34>, <immersiveengineering:metal:39>],
								  [<mekanism:ingot:1>, <opencomputers:material:6>, <mekanism:ingot:1>],
								  [<immersiveengineering:metal:39>, <mysticalagriculture:storage:1>,  <immersiveengineering:metal:39>]]);
recipes.removeShaped(<actuallyadditions:item_mining_lens>, [[<ore:gemDiamond>, <ore:ingotGold>, <ore:ingotIron>],
							   [<ore:coal>, <actuallyadditions:item_misc:18>, <ore:gemQuartzBlack>],
							   [<ore:gemQuartz>, <ore:gemLapis>, <ore:gemEmerald>]]);
recipes.addShaped(<actuallyadditions:item_mining_lens>, [[<actuallyadditions:item_crystal:5>, <tconstruct:clear_glass>, <actuallyadditions:item_crystal>],
							[<tconstruct:clear_glass>, <actuallyadditions:item_misc:18>, <tconstruct:clear_glass>],
							[<actuallyadditions:item_crystal>, <tconstruct:clear_glass>, <actuallyadditions:item_crystal:5>]]);
recipes.removeShaped(<projectred-core:resource_item:21>, [[null, <projectred-core:resource_item:341>, null],
						      [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
recipes.removeShaped(<projectred-core:resource_item:20>, [[null, <projectred-core:resource_item:320>, null],
							 [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
recipes.addShaped(<projectred-core:resource_item:21>, [[null, null, null],
						      [<mysticalagriculture:crafting:33>, <actuallyadditions:item_crystal:1>, <mysticalagriculture:crafting:33>],
						      [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
recipes.addShaped(<projectred-core:resource_item:20>, [[null, null, null],
						      [<mysticalagriculture:crafting:33>, <actuallyadditions:item_crystal>, <mysticalagriculture:crafting:33>],
						      [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
recipes.removeShaped(<opencomputers:material:6> * 8, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
						[<ore:nuggetGold>, <ore:paper>, <ore:nuggetGold>],
						[null, <minecraft:redstone>, null]]);
recipes.addShaped(<opencomputers:material:6> * 4, [[<mekanism:nugget:6>, <immersiveengineering:material:20>, <mekanism:nugget:6>],
					      [<mysticalagriculture:crafting>, <mekanism:dust:5>, <mysticalagriculture:crafting>],
					      [<appliedenergistics2:material:5>, <minecraft:redstone>, <appliedenergistics2:material:5>]]);
recipes.removeShaped(<mekanism:machineblock:8>, [[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
						[<ore:dustRedstone>, <ore:ingotOsmium>, <ore:dustRedstone>],
						[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>]]);
recipes.addShaped(<mekanism:machineblock:8>, [[<immersiveengineering:metal:39>, <opencomputers:material:6>, <immersiveengineering:metal:39>],
					     [<mysticalagriculture:crafting:32>, <vehicle:wrench>, <mysticalagriculture:crafting:33>],
					     [<immersiveengineering:metal:39>, <engineersdecor:small_lab_furnace>, <immersiveengineering:metal:39>]]);
recipes.removeShaped(<mekanism:machineblock:8>, [[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
						[<ore:dustRedstone>, <ore:ingotOsmium>, <ore:dustRedstone>],
						[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>]]);
recipes.addShaped(<mekanism:machineblock:8>, [[<immersiveengineering:metal:39>, <mysticalagriculture:crafting:35>, <immersiveengineering:metal:39>],
					     [<minecraft:redstone_block>, <mekanism:ingot:1>, <opencomputers:material:6>],
					     [<immersiveengineering:metal:39>, <tconstruct:large_plate>.withTag({Material:"steel"}), <immersiveengineering:metal:39>]]);

//// mystcraft and legit magical balancing
// alternative ink vial
recipes.addShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <mysticalagriculture:water_essence>, <minecraft:glass_bottle>, <mysticalagriculture:water_essence>, <mysticalagriculture:water_essence>]);
// allow any water source
recipes.removeShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <minecraft:glass_bottle>, <minecraft:water_bucket>]);
recipes.addShapeless(<mystcraft:vial>, [<ore:dyeBlack>, <ore:dyeBlack>, <minecraft:glass_bottle>, <ore:listAllwater>]);
// more integrated recipes
recipes.removeShaped(<mystcraft:blockinkmixer>, [[<minecraft:stone>, null, <minecraft:stone>],
						[<minecraft:stone>, <minecraft:glass_bottle>, <minecraft:stone>],
						[<minecraft:planks>, <minecraft:stone>, <minecraft:planks>]]);
recipes.removeShaped(<mystcraft:blockbookbinder>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
						  [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
						  [<ore:plankWood>, null, <ore:plankWood>]]);
recipes.addShaped(<mystcraft:blockinkmixer>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
					     [<immersiveengineering:metal:39>, <tconstruct:clear_glass>, <immersiveengineering:metal:39>],
					     [<minecraft:stone>, <mekanism:machineblock2:11>, <minecraft:stone>]]);
recipes.addShaped(<mystcraft:blockbookbinder>, [[<ore:plankWood>, <minecraft:redstone_block>, <ore:plankWood>],
					       [<immersiveengineering:metal:39>, <railcraft:plate:6>, <immersiveengineering:metal:39>],
					       [<immersiveengineering:metal:39>, <minecraft:piston>, <immersiveengineering:metal:39>]]);
// more aesthetic builders wands
recipes.removeShaped(<betterbuilderswands:wandstone>, [[null, null, <ore:cobblestone>],
						      [null, <ore:stickWood>, null],
						      [<ore:stickWood>, null, null]]);
recipes.removeShaped(<betterbuilderswands:wandiron>, [[null, null, <ore:cobblestone>],
						      [null, <ore:stickWood>, null],
						      [<ore:stickWood>, null, null]]);
recipes.removeShaped(<betterbuilderswands:wanddiamond>, [[null, null, <ore:cobblestone>],
						      [null, <ore:stickWood>, null],
						      [<ore:stickWood>, null, null]]);
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
recipes.removeShaped(<actuallyadditions:block_enervator>, [[null, <actuallyadditions:item_crystal>, null],
							  [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:8>],
							  [null, <actuallyadditions:item_crystal>, null]]);
recipes.removeShaped(<actuallyadditions:block_energizer>, [[<actuallyadditions:item_crystal>, null, <actuallyadditions:item_crystal>],
							  [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_misc:8>],
							  [<actuallyadditions:item_crystal>, null, <actuallyadditions:item_crystal>]]);
// ie caps for buffering only
recipes.removeShaped(<actuallyadditions:item_battery>, [[null, <actuallyadditions:item_crystal>, null],
						       [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal:5>],
						       [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal:5>, <actuallyadditions:item_crystal:5>]]);
recipes.addShaped(<actuallyadditions:item_battery>, [[<immersiveengineering:metal:30>, <actuallyadditions:item_crystal>, <immersiveengineering:metal:30>],
						    [<railcraft:plate:2>, <forge:bucketfilled>, <railcraft:plate:2>],
						    [<railcraft:plate:2>, <railcraft:plate:2>, <railcraft:plate:2>]]);
recipes.removeShaped(<immersiveengineering:metal_device0>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
							   [<ore:ingotCopper>, <ore:ingotLead>, <ore:ingotCopper>],
							   [<ore:plankTreatedWood>, <minecraft:redstone>, <ore:plankTreatedWood>]]);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							[<immersiveengineering:metal:30>, <actuallyadditions:item_battery>, <immersiveengineering:metal:30>],
							[<immersiveengineering:treated_wood>, <actuallyadditions:item_crystal>, <immersiveengineering:treated_wood>]]);
// utility power
recipes.removeShapeless(<actuallyadditions:block_battery_box>, [<actuallyadditions:block_energizer>, <actuallyadditions:block_enervator>, <actuallyadditions:item_misc:7>]);
recipes.addShaped(<actuallyadditions:block_battery_box>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:39>, <actuallyadditions:item_misc:7>, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
// generator progression
recipes.removeShaped(<actuallyadditions:block_coal_generator>, [[<ore:cobblestone>, <minecraft:coal:*>, <ore:cobblestone>],
							       [<ore:cobblestone>, <actuallyadditions:block_misc:9>, <ore:cobblestone>],
							       [<ore:cobblestone>, <minecraft:coal:*>, <ore:cobblestone>]]);
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <mysticalagriculture:coal_block>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <engineersdecor:small_lab_furnace>, <immersiveengineering:metal:39>]]);
