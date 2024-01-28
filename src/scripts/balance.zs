import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDictEntry;

val dyeArray = [
    <ore:dyeBlack>,
    <ore:dyeRed>,
    <ore:dyeGreen>,
    <ore:dyeBrown>,
    <ore:dyeBlue>,
    <ore:dyePurple>,
    <ore:dyeCyan>,
    <ore:dyeLightGray>,
    <ore:dyeGray>,
    <ore:dyePink>,
    <ore:dyeLime>,
    <ore:dyeYellow>,
    <ore:dyeLightBlue>,
    <ore:dyeMagenta>,
    <ore:dyeOrange>,
    <ore:dyeWhite>
] as IOreDictEntry[];


//// recycle
// people gonna end up with extra lore
recipes.addShapeless(<minecraft:paper>, [<loreexpansion:lore_scrap>]);

//// allow crafting of lore journal
recipes.addShaped(<loreexpansion:lore_journal>, [[null, <minecraft:book>, null],[null, <minecraft:gold_nugget>, null], [null, <minecraft:book>, null]]);

//// ore balancing - only transfer via smeltery
// unidict why tho
mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.removalByKind.get("Crafting").remove("plate");
// lol not every ingot recipe c'mon
mods.unidict.removalByKind.get("Crafting").remove("ingot");
mods.unidict.removalByKind.get("Crafting").remove("nugget");

// except we can do something else for lead plates i guess?
mods.tconstruct.Casting.addTableRecipe(<immersiveengineering:metal:32>, <tconstruct:fancy_frame:6>, <liquid:lead>, 144, true, 300);

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
				    [null, <immersiveengineering:material:1>, null]]);
recipes.remove(<architecturecraft:hammer>);
recipes.addShaped(<architecturecraft:hammer>, [[<tconstruct:hammer_head>.withTag({Material: "iron"}), <immersiveengineering:metal:39>, <immersiveengineering:material:1>],
					      [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null],
					      [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null]]);

// so many tools
recipes.remove(<extrautils2:wateringcan:1000>);
recipes.addShaped(<extrautils2:wateringcan:1000>, [[<immersiveengineering:metal:30>, null, null],
						  [<immersiveengineering:metal:30>, <minecraft:bucket>, <tconstruct:tough_tool_rod>.withTag({Material:"copper"})],
						  [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[null, <immersiveengineering:material:1>, null],
				      [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
				      [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
// chisels toooo
recipes.remove(<architecturecraft:chisel>);
recipes.addShaped(<architecturecraft:chisel>, [[<architecturecraft:hammer>.reuse(), null, null],
					       [null, <actuallyadditions:item_misc:2>, null],
					       [<tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null, null]]);
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [[<architecturecraft:hammer>.reuse(), null, null],
					 [null, <actuallyadditions:item_misc:2>, <tconstruct:binding>.withTag({Material: "manasteel"})],
					 [<tconstruct:tough_tool_rod>.withTag({Material: "treatedwood"}), null, null]]);
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [[<architecturecraft:hammer>.reuse(), null, null],
					    [null, <minecraft:diamond>, <tconstruct:binding>.withTag({Material: "manasteel"})],
					    [<tconstruct:tough_tool_rod>.withTag({Material: "treatedwood"}), null, null]]);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.addShaped(<chiselsandbits:chisel_iron>, [[<architecturecraft:hammer>.reuse(), null, null],
						 [null, null, <actuallyadditions:item_misc:2>],
						 [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null]]);
recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.addShaped(<chiselsandbits:chisel_diamond>, [[<architecturecraft:hammer>.reuse(), null, null],
						    [null, null, <minecraft:diamond>],
						    [null, <tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null]]);
recipes.remove(<chisel:offsettool>);
recipes.addShaped(<chisel:offsettool>, [[null, null, <tconstruct:pan_head>.withTag({Material: "manasteel"})],
				        [null, <tconstruct:binding>.withTag({Material: "treatedwood"}), null],
					[<tconstruct:tool_rod>.withTag({Material: "treatedwood"}), null, null]]);
// saw used for other things too
recipes.remove(<chiselsandbits:bitsaw_diamond>);
recipes.addShaped(<chiselsandbits:bitsaw_diamond>, [[null, null, null],
						    [<immersiveengineering:treated_wood_slab>, <immersiveengineering:material>, <immersiveengineering:material>],
						    [<immersiveengineering:material:13>, <minecraft:diamond>, <minecraft:diamond>]]);

// measuring things
recipes.remove(<bibliocraft:tape>);
recipes.addShaped(<bibliocraft:tape>, [[null, <immersiveengineering:material:1>, null],
				       [<immersiveengineering:material:1>, <ore:dyeYellow>, <immersiveengineering:material:1>],
				       [null, <immersiveengineering:material:1>, null]]);
recipes.remove(<chiselsandbits:tape_measure>);
recipes.addShaped(<chiselsandbits:tape_measure>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
						  [null, <bibliocraft:tape>, <immersiveengineering:metal:39>],
						  [null, <vehicle:wrench>.reuse(), null]]);
recipes.remove(<bibliocraft:tapemeasure>);
recipes.addShaped(<bibliocraft:tapemeasure>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
					      [<immersiveengineering:metal:39>, <bibliocraft:tape>, null],
					      [null, <vehicle:wrench>.reuse(), null]]);
// adjusting things
recipes.remove(<bibliocraft:bibliodrill>);
recipes.addShaped(<bibliocraft:bibliodrill>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
					      [<projectred-core:resource_item:103>, <minecraft:stone_button>, null],
					      [<mysticalagriculture:crafting:33>, null, null]]);
// projector
recipes.remove(<immersivepetroleum:schematic>);
recipes.addShaped(<immersivepetroleum:schematic>, [[<tconstruct:clear_glass>, <immersiveengineering:metal:39>, <vehicle:wrench>.reuse()],
						   [<immersiveengineering:metal:39>, <realistictorches:glowstone_crystal>, <immersiveengineering:metal:39>],
						   [null, <immersiveengineering:metal:39>, <immersiveengineering:material:8>]]);
// robit
recipes.remove(<mekanism:robit>);
recipes.addShaped(<mekanism:robit>, [[null, <immersiveengineering:metal:38>, <openscreens:backflatscreen1>],
				     [<immersiveengineering:metal:38>, <mekanism:controlcircuit:3>, <actuallyadditions:item_battery_triple>],
				     [<vehicle:wheel:6>, <mekanism:compressedobsidian>, <vehicle:wheel:6>]]);
// fluid storage - mekanism tanks
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
// dynamic tank
recipes.remove(<mekanism:basicblock:9>);
recipes.addShaped(<mekanism:basicblock:9>, [[null, <immersiveengineering:metal:38>, null],
					    [<immersiveengineering:metal:38>, <immersivetech:metal_barrel:1>, <immersiveengineering:metal:38>],
					    [null, <immersiveengineering:metal:38>, null]]);
// gas tanks
recipes.remove(<mekanism:gastank>.withTag({tier: 0}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}), [[<projectred-core:resource_item:103>, <mekanism:ingot:1>, <projectred-core:resource_item:103>],
				       [<mekanism:ingot:1>, <immersiveengineering:metal_device0:4>, <mekanism:ingot:1>],
				       [<immersiveengineering:metal:38>, <mekanism:ingot:1>, <immersiveengineering:metal:38>]]);
recipes.remove(<mekanism:gastank>.withTag({tier: 1}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 1}), [[<mekanism:enrichedalloy>, <projectred-core:resource_item:104>, <mekanism:enrichedalloy>],
						          [<tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:gastank>.withTag({tier: 0}), <tconstruct:large_plate>.withTag({Material: "steel"})],
							  [<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:enrichedalloy>]]);
recipes.remove(<mekanism:gastank>.withTag({tier: 2}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 2}), [[<mekanism:reinforcedalloy>, <projectred-core:resource_item:104>, <mekanism:reinforcedalloy>],
						          [<tconstruct:large_plate>.withTag({Material: "cobalt"}), <mekanism:gastank>.withTag({tier: 1}), <tconstruct:large_plate>.withTag({Material: "cobalt"})],
							  [<mekanism:reinforcedalloy>, <tconstruct:large_plate>.withTag({Material: "cobalt"}), <mekanism:reinforcedalloy>]]);
recipes.remove(<mekanism:gastank>.withTag({tier: 3}));
recipes.addShaped(<mekanism:gastank>.withTag({tier: 3}), [[<mekanism:atomicalloy>, <actuallyadditions:item_crystal_empowered:4>, <mekanism:atomicalloy>],
						          [<actuallyadditions:item_crystal_empowered:2>, <mekanism:gastank>.withTag({tier: 2}), <actuallyadditions:item_crystal_empowered:2>],
							  [<mekanism:atomicalloy>, <actuallyadditions:item_crystal_empowered:2>, <mekanism:atomicalloy>]]);

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
recipes.remove(<cyclicmagic:magnet_anti_block>);
recipes.addShaped(<cyclicmagic:magnet_anti_block>, [[null, null, null],
						    [<actuallyadditions:item_crystal_empowered:2>, <mekanismgenerators:turbineblade>, <actuallyadditions:item_crystal_empowered:2>],
						    [<tconstruct:large_plate>.withTag({Material: "electrum"}), <mekanism:basicblock:8>, <tconstruct:large_plate>.withTag({Material: "electrum"})]]);
recipes.remove(<cyclicmagic:clock>);
recipes.addShaped(<cyclicmagic:clock>, [[<immersiveengineering:metal:39>, <tconstruct:large_plate>.withTag({Material: "netherrack"}), <immersiveengineering:metal:39>],
				        [<projectred-core:resource_item:103>, <minecraft:clock>, <projectred-core:resource_item:103>],
					[<immersiveengineering:metal:39>, <actuallyadditions:block_misc:4>, <immersiveengineering:metal:39>]]);
recipes.remove(<cyclicmagic:fire_starter>);
recipes.addShaped(<cyclicmagic:fire_starter>, [[<tconstruct:large_plate>.withTag({Material:"stone"}), <minecraft:dispenser>, <mysticalagriculture:fire_essence>],
					       [<tconstruct:large_plate>.withTag({Material:"stone"}), <actuallyadditions:block_misc:9>, <mysticalagriculture:fire_essence>],
					       [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
recipes.remove(<cyclicmagic:moon_sensor>);
recipes.addShaped(<cyclicmagic:moon_sensor>, [[<appliedenergistics2:material> | <appliedenergistics2:material:10>,
					         <appliedenergistics2:material> | <appliedenergistics2:material:10>,
						 <appliedenergistics2:material> | <appliedenergistics2:material:10>],
					      [<ore:slabWood>, <minecraft:daylight_detector>, <ore:slabWood>],
					      [null, null, null]]);
recipes.remove(<cyclicmagic:block_soundproofing>);
recipes.addShaped(<cyclicmagic:block_soundproofing>, [[<ore:blockWool>, <ore:blockWool>, <ore:blockWool>],
						      [<ore:blockWool>, <actuallyadditions:block_misc:4>, <ore:blockWool>],
						      [<ore:blockWool>, <tconstruct:large_plate>.withTag({Material: "bone"}), <ore:blockWool>]]);
recipes.remove(<cyclicmagic:block_enchanter>);
recipes.addShaped(<cyclicmagic:block_enchanter>, [[null, <minecraft:enchanting_table>, null],
						  [<actuallyadditions:item_crystal_empowered:4>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal_empowered:4>],
						  [<minecraft:obsidian>, <botania:manaresource:2>, <minecraft:obsidian>]]);


// combiner why tho??? make it easier, and use it for specific things.
mods.mekanism.combiner.removeAllRecipes();
recipes.remove(<mekanism:machineblock:2>);
recipes.addShaped(<mekanism:machineblock:2>, [[<tconstruct:large_plate>.withTag({Material: "electrum"}), <tconstruct:clear_glass>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
					      [<actuallyadditions:item_crystal:3>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:3>],
					      [<mekanism:reinforcedalloy>, <mysticalagriculture:storage>, <mekanism:controlcircuit:1>]]);
// enrichment chamber
recipes.remove(<mekanism:machineblock>);
recipes.addShaped(<mekanism:machineblock>, [[<mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>],
					    [<immersiveengineering:metal_decoration0:7>, <mekanism:basicblock:8>, <immersiveengineering:metal_decoration0:7>],
					    [<mekanism:ingot:1>, <immersiveengineering:metal_decoration0:4>, <mekanism:ingot:1>]]);
// osmium compressor
recipes.remove(<mekanism:machineblock:1>);
recipes.addShaped(<mekanism:machineblock:1>, [[<immersiveengineering:metal:38>, <mekanism:controlcircuit:2>, <immersiveengineering:metal:38>],
					      [<actuallyadditions:item_crystal_empowered:5>, <minecraft:piston>, <actuallyadditions:item_crystal_empowered:5>],
					      [<mekanism:ingot:1>, <immersiveengineering:metal_decoration0:5>, <mekanism:ingot:1>]]);
// PRC
recipes.remove(<mekanism:machineblock2:10>);
recipes.addShaped(<mekanism:machineblock2:10>, [[<mekanism:ingot:1>, <mekanism:controlcircuit:1>, <mekanism:ingot:1>],
					        [<mekanism:reinforcedalloy>, <mekanism:machineblock>, <mekanism:reinforcedalloy>],
						[<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:gastank>]]);
// energetic infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<immersiveengineering:metal:39>, <opencomputers:material:7>, <immersiveengineering:metal:39>],
					      [<mysticalagriculture:crafting:32>, <actuallyadditions:item_battery>.withTag({Energy: 200000}), <mysticalagriculture:crafting:33>],
					      [<vehicle:wrench>.reuse(), <engineersdecor:small_electrical_furnace>, <immersiveengineering:metal_decoration0:3>]]);
// chemical injection chamber
recipes.remove(<mekanism:machineblock2:3>);
recipes.addShaped(<mekanism:machineblock2:3>, [[<tconstruct:large_plate>.withTag({Material: "steel"}), <actuallyadditions:item_crystal_empowered:3>, <tconstruct:large_plate>.withTag({Material: "steel"})],
					       [<immersiveengineering:metal_decoration0:3>, <mekanism:basicblock:8>, <mekanism:compressedobsidian>],
					       [<mekanism:reinforcedalloy>, <mekanism:gastank>, <mekanism:reinforcedalloy>]]);
// precision sawmill
recipes.remove(<mekanism:machineblock2:5>);
recipes.addShaped(<mekanism:machineblock2:5>, [[<tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:compressedredstone>, <tconstruct:large_plate>.withTag({Material: "steel"})],
					       [<architecturecraft:sawblade>, <mekanism:basicblock:8>, <mekanism:compressedobsidian>],
					       [<architecturecraft:sawblade>, <vehicle:electric_engine:2>, <mekanism:enrichedalloy>]]);
// rotary condensrator
recipes.remove(<mekanism:machineblock2>);
recipes.addShaped(<mekanism:machineblock2>, [[<extrautils2:decorativeglass>, <actuallyadditions:item_crystal:2>, <extrautils2:decorativeglass>],
					     [<mekanism:controlcircuit:1>, <immersiveengineering:metal_decoration0:4>, <mekanism:compressedredstone>],
					     [<mekanism:gastank>, <actuallyadditions:block_misc:9>, <mekanism:basicblock:9>]]);
// chemical oxidizer
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1>, [[<actuallyadditions:item_crystal>, <mekanism:compressedredstone>, <actuallyadditions:item_crystal>],
					       [<mekanism:controlcircuit>, <immersiveengineering:metal_decoration0:3>, <mekanism:controlcircuit>],
					       [<mekanism:gastank>, <actuallyadditions:block_misc:9>, <mekanism:basicblock:9>]]);
// chemical infuser
recipes.remove(<mekanism:machineblock2:2>);
recipes.addShaped(<mekanism:machineblock2:2>, [[<projectred-core:resource_item:104>, <mekanism:compressedredstone>, <mekanism:compressedredstone>],
					       [<mekanism:controlcircuit>, <mekanism:basicblock:9>, <mekanism:controlcircuit>],
					       [<mekanism:gastank>, <immersiveengineering:metal_decoration0:3>, <mekanism:gastank>]]);
// electrolytic separator
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped(<mekanism:machineblock2:4>, [[<projectred-core:resource_item:103>, <actuallyadditions:item_crystal:1>, <projectred-core:resource_item:103>],
					       [<mekanism:transmitter:2>, <mekanism:electrolyticcore>, <mekanism:transmitter:2>],
					       [<mekanism:basicblock:9>, <actuallyadditions:block_misc:9>, <mekanism:controlcircuit>]]);
// inscriber
recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
						    [<projectred-core:resource_item:104>, <minecraft:piston>, <mekanism:controlcircuit>],
						    [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:9>, <actuallyadditions:item_battery>]]);
// alch electrolyzer
recipes.remove(<alchemistry:electrolyzer>);
recipes.addShaped(<alchemistry:electrolyzer>, [[<immersiveengineering:material:1>, <mekanism:electrolyticcore>, <immersiveposts:metal_rods:6>],
					       [<projectred-core:resource_item:103>, <actuallyadditions:block_misc:9>, <projectred-core:resource_item:103>],
					       [<mekanism:enrichedalloy>, <mekanism:basicblock:9>, <immersiveengineering:metal_decoration0:4>]]);
// chemical dissolver
recipes.remove(<alchemistry:chemical_dissolver>);
recipes.addShaped(<alchemistry:chemical_dissolver>, [[<projectred-core:resource_item>, <immersiveengineering:metal_decoration0:7>, <projectred-core:resource_item>],
						     [<projectred-core:resource_item:103>, <actuallyadditions:block_misc:9>, <projectred-core:resource_item:103>],
						     [<immersiveengineering:sheetmetal:9>, <actuallyadditions:item_crystal:2>, <immersiveengineering:sheetmetal:9>]]);
// evaporator
recipes.remove(<alchemistry:evaporator>);
recipes.addShaped(<alchemistry:evaporator>, [[null, null, null],
					     [<tconstruct:tool_rod>.withTag({Material: "iron"}), <tconstruct:binding>.withTag({Material: "iron"}), <tconstruct:tool_rod>.withTag({Material: "iron"})],
					     [<tconstruct:tool_rod>.withTag({Material: "iron"}), <immersivetech:metal_barrel:1>, <tconstruct:tool_rod>.withTag({Material: "iron"})]]);
// garden cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [[<tconstruct:clear_glass>, <immersiveengineering:material:26>, <tconstruct:clear_glass>],
							    [<tconstruct:clear_glass>, null, <tconstruct:clear_glass>],
							    [<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:treated_wood>]]);

// other
recipes.remove(<architecturecraft:sawbench>);
recipes.addShaped(<architecturecraft:sawbench>, [[<tconstruct:large_plate>.withTag({Material: "livingwood"}), <architecturecraft:sawblade>, <tconstruct:large_plate>.withTag({Material: "livingwood"})],
						 [<immersiveengineering:material>, <architecturecraft:largepulley>, <immersiveengineering:material>],
						 [<immersiveengineering:material>, <actuallyadditions:block_misc:4>, <minecraft:wooden_pressure_plate>]]);

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

//// pure aesthetic
recipes.remove(<bibliocraft:paintingpress>);
recipes.addShaped(<bibliocraft:paintingpress>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
					        [<ore:dyeWhite>, <minecraft:painting>, <ore:dyeBlack>],
						[<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:4>, <mysticalagriculture:crafting:33>]]);
mods.jei.JEI.removeAndHide(<minecraft:painting>);
recipes.remove(<bibliocraft:paintingcanvas>);
recipes.addShaped(<bibliocraft:paintingcanvas> * 2, [[<tconstruct:binding>.withTag({Material: "paper"}), <minecraft:carpet>, <tconstruct:binding>.withTag({Material: "paper"})],
						     [<minecraft:carpet>, <minecraft:carpet>, <minecraft:carpet>],
						     [<tconstruct:binding>.withTag({Material: "paper"}), <minecraft:carpet>, <tconstruct:binding>.withTag({Material: "paper"})]]);
//// power is a whole thing. blend recipes.
// we do not want these power widgets
// ie caps for buffering only
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 0}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 1}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 2}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 3}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 4}));

mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 0, mekData: {energyStored: 1000000}}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 1, mekData: {energyStored: 4000000}}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 2, mekData: {energyStored: 8000000}}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 3, mekData: {energyStored: 160000000}}));
mods.jei.JEI.removeAndHide(<mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}));

// batteries
recipes.remove(<actuallyadditions:item_battery>);
recipes.addShaped(<actuallyadditions:item_battery>, [[<immersiveengineering:metal:30>, <actuallyadditions:item_crystal>, <immersiveengineering:metal:30>],
						    [<railcraft:plate:2>, <immersiveengineering:metal:32>, <railcraft:plate:2>],
						    [<railcraft:plate:2>, <railcraft:plate:2>, <railcraft:plate:2>]]);
recipes.remove(<actuallyadditions:item_battery_double>);
recipes.addShaped(<actuallyadditions:item_battery_double>, [[<immersiveengineering:metal:30>, <projectred-core:resource_item:103>, <immersiveengineering:metal:30>],
							    [<actuallyadditions:item_crystal:5>, <actuallyadditions:item_battery>, <actuallyadditions:item_crystal:5>],
							    [<railcraft:plate:2>, <actuallyadditions:item_crystal:5>, <railcraft:plate:2>]]);
recipes.remove(<actuallyadditions:item_battery_triple>);
recipes.addShaped(<actuallyadditions:item_battery_triple>, [[<immersiveengineering:metal:30>, <projectred-core:resource_item:104>, <immersiveengineering:metal:30>],
							    [<actuallyadditions:item_crystal:2>, <actuallyadditions:item_battery_double>, <actuallyadditions:item_crystal:2>],
							    [<railcraft:plate:2>, <actuallyadditions:item_crystal:2>, <railcraft:plate:2>]]);
recipes.remove(<actuallyadditions:item_battery_quadruple>);
recipes.addShaped(<actuallyadditions:item_battery_quadruple>, [[<immersiveengineering:metal:37>, <actuallyadditions:item_crystal_empowered:5>, <immersiveengineering:metal:37>],
							       [<mekanism:compresseddiamond>, <actuallyadditions:item_battery_triple>, <mekanism:compresseddiamond>],
							       [<railcraft:plate:6>, <mekanism:compresseddiamond>, <railcraft:plate:6>]]);
recipes.remove(<actuallyadditions:item_battery_quintuple>);
recipes.addShaped(<actuallyadditions:item_battery_quintuple>, [[<immersiveengineering:metal:37>, <actuallyadditions:item_crystal_empowered:4>, <immersiveengineering:metal:37>],
							       [<mekanism:compresseddiamond>, <actuallyadditions:item_battery_quadruple>, <mekanism:compresseddiamond>],
							       [<railcraft:plate:6>, <mekanism:atomicalloy>, <railcraft:plate:6>]]);
// ie lv cap and cabling
recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							[<immersiveengineering:metal:30>, <actuallyadditions:item_battery>.withTag({Energy: 200000}), <immersiveengineering:metal:30>],
							[<immersiveengineering:treated_wood>, <actuallyadditions:item_crystal>, <immersiveengineering:treated_wood>]]);
recipes.remove(<immersiveengineering:wirecoil:6>);
recipes.addShaped(<immersiveengineering:wirecoil:6> * 4, [[<immersiveengineering:material:5>, <immersiveengineering:material:20>, <immersiveengineering:material:5>],
						          [<immersiveengineering:material:20>, <mysticalworld:spindle>, <immersiveengineering:material:20>],
							  [<immersiveengineering:material:5>, <immersiveengineering:material:20>, <immersiveengineering:material:5>]]);
recipes.remove(<immersiveengineering:wirecoil>);
recipes.addShaped(<immersiveengineering:wirecoil> * 4, [[null, <immersiveengineering:material:20>, null],
  						        [<immersiveengineering:material:20>, <mysticalworld:spindle>, <immersiveengineering:material:20>],
							[null, <immersiveengineering:material:20>, null]]);
// ie mv cap and cabling
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.addShaped(<immersiveengineering:metal_device0:1>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							   [<immersiveengineering:metal:37>, <actuallyadditions:item_battery_double>, <immersiveengineering:metal:37>],
							   [<immersiveengineering:treated_wood>, <actuallyadditions:item_crystal:2>, <immersiveengineering:treated_wood>]]);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.addShaped(<immersiveengineering:wirecoil:1> * 4 , [[null, <immersiveengineering:material:21>, null],
						           [<immersiveengineering:material:21>, <mysticalworld:spindle>, <immersiveengineering:material:21>],
							   [null, <immersiveengineering:material:21>, null]]);
recipes.remove(<immersiveengineering:wirecoil:7>);
recipes.addShaped(<immersiveengineering:wirecoil:7>, [[<immersiveengineering:material:5>, <immersiveengineering:material:21>, <immersiveengineering:material:5>],
 						      [<immersiveengineering:material:21>, <mysticalworld:spindle>, <immersiveengineering:material:21>],
						      [<immersiveengineering:material:5>, <immersiveengineering:material:21>, <immersiveengineering:material:5>]]);
// ie transformer
recipes.remove(<immersiveengineering:connector:7>);
recipes.addShaped(<immersiveengineering:connector:7>, [[<immersiveengineering:connector>, null, <immersiveengineering:connector:2>],
						       [<immersiveengineering:metal:39>, <immersiveengineering:metal_decoration0:1>, <immersiveengineering:metal:39>],
						       [<projectred-core:resource_item:104>, <immersiveengineering:metal:39>, <projectred-core:resource_item:104>]]);
// ie hv transformer
recipes.remove(<immersiveengineering:connector:8>);
recipes.addShaped(<immersiveengineering:connector:8>, [[<immersiveengineering:connector:2>, null, <immersiveengineering:connector:4>],
						       [<immersiveengineering:metal:38>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal:38>],
						       [<alchemistry:ingot:22>, <immersiveengineering:metal:38>, <alchemistry:ingot:22>]]);
// ie current transformer
recipes.remove(<immersiveengineering:connector:11>);
recipes.addShaped(<immersiveengineering:connector:11>, [[null, <immersiveengineering:connector:2>, null],
						        [<immersiveengineering:metal:38>, <rsgauges:flatgauge1>, <immersiveengineering:metal:38>],
							[<immersiveengineering:metal_decoration0>, <mekanism:controlcircuit>, <immersiveengineering:metal_decoration0>]]);// utility power

recipes.remove(<actuallyadditions:block_battery_box>);
recipes.addShaped(<actuallyadditions:block_battery_box>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:39>, <actuallyadditions:item_misc:7>, <immersiveengineering:metal:39>],
							 [<immersiveengineering:metal:30>, <immersiveengineering:metal:30>, <immersiveengineering:metal:30>]]);
// generator progression
recipes.remove(<actuallyadditions:block_coal_generator>);
recipes.addShaped(<actuallyadditions:block_coal_generator>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <mysticalagriculture:coal_block>, <immersiveengineering:metal:39>],
							    [<immersiveengineering:metal:39>, <engineersdecor:small_lab_furnace>, <immersiveengineering:metal:39>]]);
recipes.remove(<actuallyadditions:block_leaf_generator>);
recipes.addShaped(<actuallyadditions:block_leaf_generator>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:40>, <immersiveengineering:metal:39>],
							     [<ore:treeLeaves>, <mysticalagriculture:ingot_storage:1>, <ore:treeLeaves>],
							     [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:39>]]);
recipes.remove(<engineersdecor:small_solar_panel>);
recipes.addShaped(<engineersdecor:small_solar_panel>, [[null, <mekanismgenerators:solarpanel>, null],
						       [<vehicle:wrench>.reuse(), <immersiveengineering:material:8>, null],
						       [<immersiveengineering:metal:38>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:38>]]);
// thermo generator
recipes.remove(<immersiveengineering:metal_device1:3>);
recipes.addShaped(<immersiveengineering:metal_device1:3>, [[<immersiveengineering:metal:36>, <immersiveengineering:metal:36>, <immersiveengineering:metal:36>],
							   [<immersiveengineering:metal:36>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal:36>],
							   [<immersiveengineering:metal:38>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:38>]]);
// chargepad
recipes.remove(<mekanism:machineblock:14>);
recipes.addShaped(<mekanism:machineblock:14>, [[null, null, null],
					       [<mekanism:ingot:1>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:heavy_weighted_pressure_plate>],
					       [<immersiveengineering:metal_device0>, <mekanism:controlcircuit:1>, <immersiveengineering:metal_decoration0:4>]]);

// rice slime from pams
recipes.remove(<actuallyadditions:item_misc:12>);
recipes.addShaped(<actuallyadditions:item_misc:12> * 4, [[null, <harvestcraft:riceitem>, null],
						     	 [<harvestcraft:riceitem>, <minecraft:water_bucket>, <harvestcraft:riceitem>],
							 [null, <harvestcraft:riceitem>, null]]);

// assorted leather balancing
recipes.removeShapeless(<minecraft:leather> * 2, [<minecraft:leather_boots>]);


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
// livingwood stick
recipes.remove(<botania:manaresource:3>);
recipes.addShaped(<botania:manaresource:3>, [[null, <botania:livingwood>, null],[null, <botania:livingwood:1>, null], [null, null, null]]);
// tripwire
recipes.remove(<minecraft:tripwire_hook>);
recipes.addShaped(<minecraft:tripwire_hook> * 4, [[null, <mysticalagriculture:crafting:33>, null],
					          [null, <tconstruct:binding>, null],
						  [null, <minecraft:planks>, null]]);
// spindle
recipes.remove(<mysticalworld:spindle>);
recipes.addShaped(<mysticalworld:spindle>, [[null, <tconstruct:tool_rod>.withTag({Material: "wood"}), null],
					    [null, <tconstruct:pan_head>.withTag({Material: "wood"}), null],
					    [null, <minecraft:tripwire_hook>, null]]);
// wooden casing
recipes.remove(<actuallyadditions:block_misc:4>);
recipes.addShaped(<actuallyadditions:block_misc:4> * 4, [[<tconstruct:large_plate>.withTag({Material: "wood"}), <bibliocraft:framingsheet>, <tconstruct:large_plate>.withTag({Material: "wood"})],
						         [<bibliocraft:framingsheet>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:framingsheet>],
						         [<tconstruct:large_plate>.withTag({Material: "wood"}), <bibliocraft:framingsheet>, <tconstruct:large_plate>.withTag({Material: "wood"})]]);
// iron casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped(<actuallyadditions:block_misc:9> * 4, [[<immersiveengineering:metal:39>, <bibliocraft:framingsheet>, <immersiveengineering:metal:39>],
						         [<bibliocraft:framingsheet>, <tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:framingsheet>],
						         [<immersiveengineering:metal:39>, <bibliocraft:framingsheet>, <immersiveengineering:metal:39>]]);
// steel casing
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8> * 4, [[<tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:ingot:1>, <tconstruct:large_plate>.withTag({Material: "steel"})],
					        [<mekanism:ingot:1>, <tconstruct:tough_binding>.withTag({Material: "steel"}), <mekanism:ingot:1>],
					        [<tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:ingot:1>, <tconstruct:large_plate>.withTag({Material: "steel"})]]);
// ender casing
recipes.remove(<actuallyadditions:block_misc:8>);
recipes.addShaped(<actuallyadditions:block_misc:8> * 4, [[<tconstruct:large_plate>.withTag({Material: "steel"}), <actuallyadditions:item_crystal_empowered:2>, <tconstruct:large_plate>.withTag({Material: "steel"})],
						         [<botania:manaresource>, <tconstruct:tough_binding>.withTag({Material: "cobalt"}), <botania:manaresource>],
							 [<tconstruct:large_plate>.withTag({Material: "steel"}), <actuallyadditions:block_misc:6>, <tconstruct:large_plate>.withTag({Material: "steel"})]]);
// immersive engineering - redstone engineering block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 4, [[<mekanism:ingot:1>, <projectred-core:resource_item:104>, <mekanism:ingot:1>],
							       	   [<projectred-core:resource_item:103>, <immersiveengineering:metal:30>, <projectred-core:resource_item:103>],
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
							   [<projectred-core:resource_item:103>, <immersiveengineering:metal_decoration0>, <projectred-core:resource_item:103>],
							   [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:33>]]);
// energized silicon chip
recipes.remove(<projectred-core:resource_item:21>);
recipes.addShaped(<projectred-core:resource_item:21>, [[null, null, null],
						       [<minecraft:redstone>, <opencomputers:material:7>, <minecraft:redstone>],
						       [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
// silicon chip
recipes.remove(<projectred-core:resource_item:20>);
recipes.addShaped(<projectred-core:resource_item:20>, [[null, null, null],
						       [null, <opencomputers:material:7>, null],
						       [<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
// TODO: see if we can drop the shaped reference to multiples?
// transistor
recipes.remove(<opencomputers:material:6>);
recipes.addShaped(<opencomputers:material:6> * 4, [[<mekanism:nugget:6>, <immersiveengineering:material:20>, <mekanism:nugget:6>],
					      [<mysticalagriculture:crafting>, <mekanism:dust:5>, <mysticalagriculture:crafting>],
					      [<appliedenergistics2:material:5>, <projectred-core:resource_item:103>, <appliedenergistics2:material:5>]]);
// t1 microchip
recipes.remove(<opencomputers:material:7>);
recipes.addShaped(<opencomputers:material:7> * 8, [[<mekanism:dust:2>, <immersiveengineering:material:20>, <mekanism:dust:2>],
					           [<opencomputers:material:6>, <appliedenergistics2:material:20>, <opencomputers:material:6>],
					           [<mekanism:dust:2>, <projectred-core:resource_item:105>, <mekanism:dust:2>]]);
// t2 microchip
recipes.remove(<opencomputers:material:8>);
recipes.addShaped(<opencomputers:material:8> * 4, [[<mysticalworld:gold_dust_tiny>, <projectred-core:resource_item:105>, <mysticalworld:gold_dust_tiny>],
					           [<opencomputers:material:7>, <mekanism:compressedredstone>, <opencomputers:material:7>],
						   [<mysticalworld:gold_dust_tiny>, <projectred-core:resource_item:105>, <mysticalworld:gold_dust_tiny>]]);
// t3 microchip
recipes.remove(<opencomputers:material:9>);
recipes.addShaped(<opencomputers:material:9> * 2, [[<opencomputers:material:7>, <actuallyadditions:item_crystal:2>, <opencomputers:material:7>],
					           [<actuallyadditions:item_crystal:1>, <mekanism:compressedredstone>, <actuallyadditions:item_crystal:1>],
						   [<opencomputers:material:7>, <mekanism:otherdust>, <opencomputers:material:7>]]);
// interwebs
recipes.remove(<opencomputers:material:13>);
recipes.addShaped(<opencomputers:material:13>, [[<immersiveposts:metal_rods:6>, <minecraft:web>, <immersiveposts:metal_rods:6>],
					        [<minecraft:web>, <mekanism:controlcircuit:3>, <minecraft:web>],
						[<botania:manaresource:8>, <minecraft:web>, <botania:manaresource:8>]]);
// basic control circuit
recipes.remove(<mekanism:controlcircuit>);
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);
mods.mekanism.infuser.addRecipe("REDSTONE", 50, <opencomputers:material:6>, <mekanism:controlcircuit>);
// advanced control circuit
recipes.remove(<mekanism:controlcircuit:1>);
mods.mekanism.infuser.addRecipe("REDSTONE", 60, <opencomputers:material:7>, <mekanism:controlcircuit:1>);
// elite control circuit
recipes.remove(<mekanism:controlcircuit:2>);
mods.mekanism.infuser.addRecipe("REDSTONE", 70, <opencomputers:material:8>, <mekanism:controlcircuit:2>);
// ultimate control circuit
recipes.remove(<mekanism:controlcircuit:3>);
mods.mekanism.infuser.addRecipe("REDSTONE", 80, <opencomputers:material:9>, <mekanism:controlcircuit:3>);
// aa base lens
recipes.remove(<actuallyadditions:item_misc:18>);
recipes.addShaped(<actuallyadditions:item_misc:18>, [[null, <tconstruct:tough_binding>.withTag({Material: "wood"}), null],
						     [<tconstruct:tough_binding>.withTag({Material: "wood"}), <tconstruct:clear_glass>, <tconstruct:tough_binding>.withTag({Material: "wood"})],
						     [null, <tconstruct:tough_binding>.withTag({Material: "wood"}), null]]);

// electrotine powder
recipes.addShapeless(<projectred-core:resource_item:105>, [<minecraft:redstone>, <minecraft:redstone>, <mekanism:dust:4>, <mekanism:dust:4>]);
mods.mekanism.infuser.addRecipe("TIN", 30, <minecraft:redstone>, <projectred-core:resource_item:105>);
// circuit plate
furnace.remove(<projectred-core:resource_item>);
recipes.addShapeless(<projectred-core:resource_item> * 4, [<tconstruct:large_plate>.withTag({Material: "stone"}), <immersiveengineering:tool:1>]);

// archcraft pulley
recipes.remove(<architecturecraft:largepulley>);
recipes.addShaped(<architecturecraft:largepulley>, [[<architecturecraft:hammer>.reuse(), <minecraft:planks>, null],
						    [<minecraft:planks>, <tconstruct:pan_head>.withTag({Material: "copper"}), <minecraft:planks>],
						    [null, <minecraft:planks>, null]]);
recipes.remove(<architecturecraft:sawblade>);
recipes.addShaped(<architecturecraft:sawblade>, [[<architecturecraft:hammer>.reuse(), <tconstruct:binding>.withTag({Material: "iron"}), null],
						 [<tconstruct:sword_blade>.withTag({Material: "iron"}), <railcraft:gear:3>, <tconstruct:sword_blade>.withTag({Material: "iron"})],
						 [null, <tconstruct:binding>.withTag({Material: "iron"}), null]]);
recipes.remove(<mekanism:electrolyticcore>);
recipes.addShaped(<mekanism:electrolyticcore>, [[<mekanism:enrichedalloy>, <mekanism:dust:2>, <mekanism:enrichedalloy>],
					        [<immersiveengineering:metal:16>, <actuallyadditions:item_crystal>, <immersiveengineering:metal:16>],
						[<mekanism:enrichedalloy>, <mekanism:dust:2>, <mekanism:enrichedalloy>]]);
recipes.remove(<mekanismgenerators:solarpanel>);
recipes.addShaped(<mekanismgenerators:solarpanel>, [[<extrautils2:decorativeglass>, <extrautils2:decorativeglass>, <extrautils2:decorativeglass>],
						    [<projectred-core:resource_item:103>, <mekanism:enrichedalloy>, <projectred-core:resource_item:103>],
						    [<mekanism:ingot:1>, <mekanism:ingot:1>, <mekanism:ingot:1>]]);
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

// eu2 structural glass
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
// mekanism structural glass
recipes.remove(<mekanism:basicblock:10>);
recipes.addShaped(<mekanism:basicblock:10> * 4, [[<extrautils2:decorativeglass>, <immersiveengineering:metal:38>, <extrautils2:decorativeglass>],
					         [<immersiveengineering:metal:38>, <tconstruct:binding>.withTag({Material: "steel"}), <immersiveengineering:metal:38>],
					         [<extrautils2:decorativeglass>, <immersiveengineering:metal:38>, <extrautils2:decorativeglass>]]);
// soul glass
recipes.remove(<mysticalagriculture:soul_glass>);
recipes.addShaped(<mysticalagriculture:soul_glass> * 4, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
						         [<mysticalagriculture:crafting:29>, <mysticalagriculture:crafting:29>, <mysticalagriculture:crafting:29>],
						         [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>]]);
// witherproof glass
recipes.remove(<mysticalagriculture:witherproof_glass>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:witherproof_glass> * 4, [<mysticalagriculture:soul_glass>, <mysticalagriculture:soul_glass>,
									       <botania:manaresource:2>, <actuallyadditions:item_crystal_empowered:3>], 500);

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
//// general balanzing
// plain blue dye is nice
recipes.addShaped(<plants2:generic:2> * 6, [[null, <mysticalagriculture:crafting:7>, null],
						     [<mysticalagriculture:crafting:7>, <mysticalagriculture:crafting:7>, null],
						     [null, null, null]]);
// sometimes you want a skull
mods.botania.RuneAltar.addRecipe(<fossil:skull_block>, [<mysticalagriculture:crafting:1>, <minecraft:bone_block>, <mysticalagriculture:crafting:1>], 100);
// not using mek ore quintupling bc magic plants
// but we still use this equipment
mods.mekanism.chemical.injection.removeAllRecipes();
mods.mekanism.chemical.injection.addRecipe(<minecraft:hardened_clay>, <gas:water>, <minecraft:clay>);
mods.mekanism.chemical.injection.addRecipe(<minecraft:dirt>, <gas:water>, <minecraft:clay>);
mods.mekanism.chemical.injection.addRecipe(<minecraft:brick>, <gas:water>, <minecraft:clay_ball>);
mods.mekanism.chemical.injection.addRecipe(<mekanism:otherdust:3>, <gas:hydrogenchloride>, <minecraft:gunpowder>);


// trash tho
recipes.remove(<extrautils2:trashcan>);
recipes.addShaped(<extrautils2:trashcan>, [[<immersiveengineering:metal:39>, <immersiveengineering:sheetmetal_slab:9>, <immersiveengineering:metal:39>],
					   [<immersiveengineering:metal:39>, <actuallyadditions:item_crystal_empowered:3>, <immersiveengineering:metal:39>],
					   [<immersiveengineering:metal:39>, <mekanism:compressedobsidian>, <immersiveengineering:metal:39>]]);
recipes.remove(<extrautils2:trashcanenergy>);
recipes.addShaped(<extrautils2:trashcanenergy>, [[<immersiveengineering:metal:39>, <immersiveengineering:sheetmetal_slab:9>, <immersiveengineering:metal:39>],
						 [<immersiveengineering:metal:39>, <actuallyadditions:item_crystal_empowered:4>, <immersiveengineering:metal:39>],
						 [<immersiveengineering:metal:39>, <mekanism:compressedobsidian>, <immersiveengineering:metal:39>]]);
recipes.remove(<extrautils2:trashcanfluid>);
recipes.addShaped(<extrautils2:trashcanfluid>, [[<immersiveengineering:metal:39>, <immersiveengineering:sheetmetal_slab:9>, <immersiveengineering:metal:39>],
					        [<immersiveengineering:metal:39>, <actuallyadditions:item_crystal_empowered:5>, <immersiveengineering:metal:39>],
						[<immersiveengineering:metal:39>, <mekanism:compressedobsidian>, <immersiveengineering:metal:39>]]);
// elevators
for i, dye in dyeArray {
    val elevator = itemUtils.getItem("openblocks:elevator", 15 - i);
    val rotevator = itemUtils.getItem("openblocks:elevator_rotating", 15 - i);
    recipes.remove(elevator);
    recipes.remove(rotevator);
    recipes.addShaped(rotevator, [[<architecturecraft:largepulley>, <quark:gravisand>, <architecturecraft:largepulley>],
    				  [<mysticalagriculture:crafting:24>, <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:24>],
				  [dye, <mysticalagriculture:crafting:34>, dye]]);
    recipes.addShaped(elevator, [[<immersiveengineering:metal:39>, <quark:gravisand>, <immersiveengineering:metal:39>],
			         [<mysticalagriculture:crafting:24>, <actuallyadditions:block_misc:9>, <mysticalagriculture:crafting:24>],
			         [dye, <mysticalagriculture:crafting:34>, dye]]);
}

//// salty tho
mods.immersivetechnology.Distiller.removeRecipe(<liquid:water>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:distwater> * 500, <liquid:water> * 1000, <mekanism:salt>, 5000, 20, 0.25);

// recipes.remove(<mekanism:salt>);
// mods.mekanism.chemical.washer.addRecipe(

//// mystiag
// need to add these back in bc unidict is overzealous
for i in 1 .. 6 {
    val ingot = itemUtils.getItem("mysticalagriculture:crafting", i + 32);
    val ingot_part = itemUtils.getItem("mysticalagriculture:crafting", (i - 1) + 32);
    val nugget = itemUtils.getItem("mysticalagriculture:crafting", i + 39);
    val block = itemUtils.getItem("mysticalagriculture:ingot_storage", i);
    val essence = itemUtils.getItem("mysticalagriculture:crafting", i - 1);


    // no nuggs
    mods.jei.JEI.removeAndHide(nugget);
    // essence creation
    recipes.remove(ingot);
    recipes.addShaped(ingot, [[ingot_part, essence, null],
    			 [essence, null, null],
			 [null, null, null]]);
    recipes.addShapeless(ingot *  9, [block]);
    recipes.remove(block);
    recipes.addShaped(block, [[ingot, ingot, ingot],
    		        [ingot, ingot, ingot],
			[ingot, ingot, ingot]]);

}

// base essence ingot
mods.jei.JEI.removeAndHide(<mysticalagriculture:crafting:39>);
recipes.remove(<mysticalagriculture:crafting:32>);
recipes.addShaped(<mysticalagriculture:crafting:32>, [[null, <mysticalagriculture:crafting:5>, null],
						      [<mysticalagriculture:crafting:5>, <minecraft:iron_ingot>, <mysticalagriculture:crafting:5>],
						      [null, <mysticalagriculture:crafting:5>, null]]);
recipes.remove(<mysticalagriculture:ingot_storage>);
recipes.addShaped(<mysticalagriculture:ingot_storage>, [[<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>],
						        [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>],
							[<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:32>]]);
recipes.addShapeless(<mysticalagriculture:crafting:32> * 9, [<mysticalagriculture:ingot_storage>]);

// soulium
mods.jei.JEI.removeAndHide(<mysticalagriculture:crafting:45>);
recipes.remove(<mysticalagriculture:ingot_storage:6>);
recipes.addShaped(<mysticalagriculture:ingot_storage:6>, [[<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>],
							  [<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>],
							  [<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>]]);
// cfm picture frame
for i, dye in dyeArray {
    val frame = itemUtils.getItem("cfm:photo_frame", 15 - i);
    recipes.remove(frame);
    recipes.addShaped(frame, [[dye, <tconstruct:tough_binding>.withTag({Material: "wood"}), dye],
    			     [<tconstruct:tough_binding>.withTag({Material: "wood"}), <bibliocraft:paintingcanvas>, <tconstruct:tough_binding>.withTag({Material: "wood"})],
			     [dye, <opencomputers:material:13>, dye]]);
}
