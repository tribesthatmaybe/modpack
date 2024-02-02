import crafttweaker.item.IItemStack;

// potion of luck
// mudane and cactus green or clove
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:dye:2>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:dye:2>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cyclicmagic:luck"}), <minecraft:gunpowder>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:mudane"}), <minecraft:dye:2>, <minecraft:potion>.withTag({Potion: "cyclicmagic:luck"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:mudane"}), <plants2:cosmetic_3:2>, <minecraft:potion>.withTag({Potion: "cyclicmagic:luck"}));
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:mudane"}), <minecraft:dye:2>, <minecraft:splash_potion>.withTag({Potion: "cyclicmagic:luck"}));
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:mudane"}), <plants2:cosmetic_3:2>, <minecraft:splash_potion>.withTag({Potion: "cyclicmagic:luck"}));
