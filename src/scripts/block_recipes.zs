// creation of tan sheet metal
// iron sheet metal + something yellow + something light gray
recipes.addShapeless(<contenttweaker:tan_sheetmetal>, [<immersiveengineering:sheetmetal:9>, <minecraft:dye:11>, <minecraft:dye:7>]);
recipes.addShapeless(<contenttweaker:tan_sheetmetal>, [<immersiveengineering:sheetmetal:9>, <minecraft:dye:11>, <botania:dye:8>]);
recipes.addShapeless(<contenttweaker:tan_sheetmetal>, [<immersiveengineering:sheetmetal:9>, <botania:dye:4>, <minecraft:dye:7>]);
recipes.addShapeless(<contenttweaker:tan_sheetmetal>, [<immersiveengineering:sheetmetal:9>, <botania:dye:4>, <botania:dye:8>]);


// witherproof block
recipes.remove(<mysticalagriculture:witherproof_block>);
mods.botania.RuneAltar.addRecipe(<mysticalagriculture:witherproof_block> * 4, [<mysticalagriculture:soulstone>, <mysticalagriculture:soulstone>,
									       <botania:manaresource:2>, <actuallyadditions:item_crystal_empowered:3>], 500);
