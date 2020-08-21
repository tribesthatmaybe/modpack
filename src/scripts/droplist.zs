import crafttweaker.item.IItemStack;
// some things get removed because too many things

// we want mystical agriculture for the post scarcity vibes
val MystiWidgets = [
                    # tools
                    <mysticalagriculture:inferium_pickaxe>,
                    <mysticalagriculture:prudentium_pickaxe>,
                    <mysticalagriculture:intermedium_pickaxe>,
                    <mysticalagriculture:superium_pickaxe>,
                    <mysticalagriculture:supremium_pickaxe>,
                    <mysticalagriculture:inferium_axe>,
                    <mysticalagriculture:prudentium_axe>,
                    <mysticalagriculture:intermedium_axe>,
                    <mysticalagriculture:superium_axe>,
                    <mysticalagriculture:supremium_axe>,
                    <mysticalagriculture:inferium_hoe>,
                    <mysticalagriculture:prudentium_hoe>,
                    <mysticalagriculture:intermedium_hoe>,
                    <mysticalagriculture:superium_hoe>,
                    <mysticalagriculture:supremium_hoe>,
                    <mysticalagriculture:inferium_shovel>,
                    <mysticalagriculture:prudentium_shovel>,
                    <mysticalagriculture:intermedium_shovel>,
                    <mysticalagriculture:superium_shovel>,
                    <mysticalagriculture:supremium_shovel>,
                    <mysticalagriculture:inferium_sickle>,
                    <mysticalagriculture:prudentium_sickle>,
                    <mysticalagriculture:intermedium_sickle>,
                    <mysticalagriculture:superium_sickle>,
                    <mysticalagriculture:supremium_sickle>,
                    <mysticalagriculture:inferium_scythe>,
                    <mysticalagriculture:prudentium_scythe>,
                    <mysticalagriculture:intermedium_scythe>,
                    <mysticalagriculture:superium_scythe>,
                    <mysticalagriculture:supremium_scythe>,
                    <mysticalagriculture:inferium_fishing_rod>,
                    <mysticalagriculture:prudentium_fishing_rod>,
                    <mysticalagriculture:intermedium_fishing_rod>,
                    <mysticalagriculture:superium_fishing_rod>,
                    <mysticalagriculture:supremium_fishing_rod>,
                    # weapons
                    <mysticalagriculture:inferium_arrow>,
                    <mysticalagriculture:prudentium_arrow>,
                    <mysticalagriculture:intermedium_arrow>,
                    <mysticalagriculture:superium_arrow>,
                    <mysticalagriculture:supremium_arrow>,
                    <mysticalagriculture:inferium_shears>,
                    <mysticalagriculture:prudentium_shears>,
                    <mysticalagriculture:intermedium_shears>,
                    <mysticalagriculture:superium_shears>,
                    <mysticalagriculture:supremium_shears>,
                    <mysticalagriculture:inferium_bow>,
                    <mysticalagriculture:prudentium_bow>,
                    <mysticalagriculture:intermedium_bow>,
                    <mysticalagriculture:superium_bow>,
                    <mysticalagriculture:supremium_bow>,
                    <mysticalagriculture:inferium_sword>,
                    <mysticalagriculture:prudentium_sword>,
                    <mysticalagriculture:intermedium_sword>,
                    <mysticalagriculture:superium_sword>,
                    <mysticalagriculture:supremium_sword>,
                    # armor
                    <mysticalagriculture:inferium_helmet>,
                    <mysticalagriculture:inferium_chestplate>,
                    <mysticalagriculture:inferium_leggings>,
                    <mysticalagriculture:inferium_boots>,
                    <mysticalagriculture:prudentium_helmet>,
                    <mysticalagriculture:prudentium_chestplate>,
                    <mysticalagriculture:prudentium_leggings>,
                    <mysticalagriculture:prudentium_boots>,
                    <mysticalagriculture:intermedium_helmet>,
                    <mysticalagriculture:intermedium_chestplate>,
                    <mysticalagriculture:intermedium_leggings>,
                    <mysticalagriculture:intermedium_boots>,
                    <mysticalagriculture:superium_helmet>,
                    <mysticalagriculture:superium_chestplate>,
                    <mysticalagriculture:superium_leggings>,
                    <mysticalagriculture:superium_boots>,
                    <mysticalagriculture:supremium_helmet>,
                    <mysticalagriculture:supremium_chestplate>,
                    <mysticalagriculture:supremium_leggings>,
                    <mysticalagriculture:supremium_boots>,
                    # arrowheads
                    <mysticalagriculture:gear:15>,
                    <mysticalagriculture:gear:16>,
                    <mysticalagriculture:gear:17>,
                    <mysticalagriculture:gear:18>,
                    <mysticalagriculture:gear:19>,
                    # tool cores
                    <mysticalagriculture:gear:0>,
                    <mysticalagriculture:gear:1>,
                    <mysticalagriculture:gear:2>,
                    <mysticalagriculture:gear:3>,
                    <mysticalagriculture:gear:4>,
                    <mysticalagriculture:gear:5>,
                    <mysticalagriculture:gear:6>,
                    <mysticalagriculture:gear:7>,
                    <mysticalagriculture:gear:8>,
                    <mysticalagriculture:gear:9>,
                    # charms (are not cores?)
                    <mysticalagriculture:charm:0>,
                    <mysticalagriculture:charm:1>,
                    <mysticalagriculture:charm:2>,
                    <mysticalagriculture:charm:3>,
                    <mysticalagriculture:charm:4>,
                    <mysticalagriculture:charm:5>,
                    <mysticalagriculture:charm:6>,
                    <mysticalagriculture:charm:7>,
                    <mysticalagriculture:charm:8>,
                    <mysticalagriculture:charm:9>,
                    <mysticalagriculture:charm:10>,
                    <mysticalagriculture:charm:11>,
                    <mysticalagriculture:charm:12>,
                    <mysticalagriculture:charm:13>,
                    <mysticalagriculture:charm:14>,
                    <mysticalagriculture:charm:15>,
                    <mysticalagriculture:charm:16>,
                    <mysticalagriculture:charm:17>,
                    <mysticalagriculture:charm:18>,
                    <mysticalagriculture:charm:19>,
                    <mysticalagriculture:charm:20>,
                    # tinkering table
                    <mysticalagriculture:tinkering_table:0>,
                    <mysticalagriculture:tinkering_table:1>,
                    <mysticalagriculture:tinkering_table:2>,
                    <mysticalagriculture:tinkering_table:3>,
                    <mysticalagriculture:tinkering_table:4>,
                    # assorted?
                    <mysticalagriculture:crafting:48>,
                    <mysticalagriculture:crafting:50>,
                    <mysticalagriculture:crafting:51>,
                    <mysticalagriculture:crafting:52>,
                    <mysticalagriculture:crafting:53>,
                    <mysticalagriculture:crafting:54>
] as IItemStack[];
for widget in MystiWidgets {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}

// not needed for gameplay
var NarrativeTho = [
    <betterquesting:extra_life>,
    <betterquesting:extra_life:1>,
    <betterquesting:extra_life:2>,
    <animalbikes:pigbike>,
    <animalbikes:wolfbike>,
    <animalbikes:cowbike>,
    <animalbikes:sheepbike>,
    <animalbikes:chickenbike>,
    <animalbikes:squidbike>,
    <animalbikes:enderbike>,
    <animalbikes:dragonbike>,
    <animalbikes:notchbike>,
    <animalbikes:ghastbike>,
    <animalbikes:bunnybike>,
    <animalbikes:snowgolembike>,
    <animalbikes:silverfishbike>,
    <animalbikes:batbike>,
    <animalbikes:ocelotbike>,
    <animalbikes:slimebike>,
    <animalbikes:witherbike>,
    <cyclicmagic:mattock>
] as IItemStack[];
for widget in NarrativeTho {
  mods.jei.JEI.removeAndHide(widget);
}

// not using temperature part of tough as nails
var NailsTho = [
    <toughasnails:temperature_coil:0>,
    <toughasnails:temperature_coil:1>,
    <toughasnails:thermometer>,
    <toughasnails:wool_helmet>,
    <toughasnails:wool_chestplate>,
    <toughasnails:wool_leggings>,
    <toughasnails:wool_boots>,
    <toughasnails:jelled_slime_helmet>,
    <toughasnails:jelled_slime_chestplate>,
    <toughasnails:jelled_slime_leggings>,
    <toughasnails:jelled_slime_boots>,
    <toughasnails:jelled_slime>,
    <toughasnails:ice_cube>,
    <toughasnails:magma_shard>,
    <toughasnails:campfire>
] as IItemStack[];
for widget in NailsTho {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}

//// too many tools
var tooManyTools = [
    <microblockcbe:saw_stone>,     // these cause blocks which can corrupt the world
    <microblockcbe:saw_diamond>,   // when you light them on fire. and we will
    <microblockcbe:saw_iron>,      // always light blocks on fire.
    <botania:manasteelpick>,
    <botania:elementiumpick>,
    <botania:glasspick>,
    <cyclicmagic:netherbrick_pickaxe>,
    <immersiveengineering:pickaxe_steel>,
    <mysticalworld:copper_pickaxe>,
    <mysticalworld:silver_pickaxe>,
    <mysticalworld:amethyst_pickaxe>,
    <plants2:crystal_pickaxe>,
    <plants2:dark_crystal_pickaxe>,
    <botania:manasteelshovel>,
    <botania:elementiumshovel>,
    <cyclicmagic:netherbrick_spade>,
    <immersiveengineering:shovel_steel>,
    <mysticalworld:copper_shovel>,
    <mysticalworld:silver_shovel>,
    <mysticalworld:amethyst_shovel>,
    <plants2:crystal_shovel>,
    <plants2:dark_crystal_shovel>,
    <cyclicmagic:netherbrick_hoe>,
    <immersiveengineering:hoe_steel>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:silver_hoe>,
    <mysticalworld:amethyst_hoe>,
    <plants2:crystal_hoe>,
    <plants2:dark_crystal_hoe>,
    <botania:elementiumaxe>,
    <botania:manasteelaxe>,
    <cyclicmagic:netherbrick_axe>,
    <immersiveengineering:axe_steel>,
    <mysticalworld:copper_axe>,
    <mysticalworld:silver_axe>,
    <mysticalworld:amethyst_axe>,
    <plants2:crystal_axe>,
    <plants2:dark_crystal_axe>,
    <cyclicmagic:tool_harvest_crops>,
    <cyclicmagic:tool_harvest_weeds>,
    <plants2:dark_crystal_sword>,
    <plants2:crystal_sword>,
    <botania:manasteelsword>
] as IItemStack[];

for widget in tooManyTools {
  logger.logInfo("dropping " + widget.name);
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}

//// too many potions
// not using tough as nails temperature mechanic
var tooManyPotions = [
    "toughasnails:cold_resistance_type",
    "toughasnails:long_cold_resistance_type",
    "toughasnails:heat_resistance_type",
    "toughasnails:long_heat_resistance_type"
] as string[];

for potion in tooManyPotions {
  var p_potion = <minecraft:potion>.withTag({Potion: potion});
  var p_lingering = <minecraft:lingering_potion>.withTag({Potion: potion});
  var p_splash = <minecraft:splash_potion>.withTag({Potion: potion});
  mods.jei.JEI.removeAndHide(p_potion);
  mods.jei.JEI.removeAndHide(p_lingering);
  mods.jei.JEI.removeAndHide(p_splash);
}
// cold resistance
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "awkward"}), <toughasnails:ice_cube>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:redstone>);
// heat resistance
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "awkward"}), <toughasnails:magma_shard>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:redstone>);
// lingering cold resistance
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cold_resistance_type"}), <toughasnails:ice_cube>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "long_cold_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "long_cold_resistance_type"}), <minecraft:dragon_breath>);
// lingering heat resistance
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "heat_resistance_type"}), <toughasnails:magma_shard>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "long_heat_resistance_type"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "long_heat_resistance_type"}), <minecraft:dragon_breath>);
// splash cold resistance
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "awkward"}), <toughasnails:ice_cube>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "long_cold_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cold_resistance_type"}), <minecraft:gunpowder>);
// splash heat resistance
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "awkward"}), <toughasnails:magma_shard>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "long_heat_resistance_type"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "heat_resistance_type"}), <minecraft:gunpowder>);

// potioncore for effects only
var potionCoreTho = [
    "saturation",
    "strong_saturation",
    "wither",
    "strong_wither",
    "long_wither",
    "hunger",
    "strong_hunger",
    "long_hunger",
    "blindness",
    "strong_blindness",
    "long_blindness",
    "nausea",
    "long_nausea",
    "levitation",
    "strong_levitation",
    "long_levitation",
    "absorption",
    "strong_absorption",
    "long_absorption",
    "glowing",
    "long_glowing",
    "health_boost",
    "strong_health_boost",
    "long_health_boost",
    "unluck",
    "love",
    "repair",
    "strong_repair",
    "long_repair",
    "flight",
    "long_flight",
    "extension",
    "strong_extension",
    "long_extension",
    "recoil",
    "strong_recoil",
    "long_recoil",
    "broken_magic_shield",
    "strong_broken_magic_shield",
    "long_broken_magic_shield",
    "iron_skin",
    "strong_iron_skin",
    "long_iron_skin",
    "purity",
    "long_purity",
    "reach",
    "strong_reach",
    "long_reach",
    "diamond_skin",
    "strong_diamond_skin",
    "long_diamond_skin",
    "teleport",
    "strong_teleport",
    "teleport_surface",
    "magic_focus",
    "strong_magic_focus",
    "long_magic_focus",
    "step_up",
    "cure",
    "long_step_up",
    "strong_step_up",
    "drown",
    "long_drown",
    "teleport_spawn",
    "disorganization",
    "climb",
    "long_climb",
    "perplexity",
    "long_perplexity",
    "rust",
    "strong_rust",
    "long_rust",
    "vulnerable",
    "long_vulnerable",
    "strong_vulnerable",
    "explode",
    "strong_explode",
    "solid_core",
    "long_solid_core",
    "strong_solid_core",
    "fire",
    "strong_fire",
    "lightning",
    "magic_inhibition",
    "strong_magic_inhibition",
    "long_magic_inhibition",
    "chance",
    "strong_chance",
    "invert",
    "weight",
    "strong_weight",
    "long_weight",
    "launch",
    "strong_launch",
    "dispel",
    "revival",
    "strong_revival",
    "long_revival",
    "klutz",
    "long_klutz",
    "strong_klutz",
    "bless",
    "strong_bless",
    "broken_armor",
    "strong_broken_armor",
    "long_broken_armor",
    "magic_shield",
    "strong_magic_shield",
    "long_magic_shield",
    "slow_fall",
    "strong_slow_fall",
    "long_slow_fall",
    "antidote",
    "long_antidote",
    "spin",
    "strong_spin",
    "long_spin",
    "curse",
    "strong_curse",
    "burst",
    "strong_burst",
    "archery",
    "strong_archery",
    "long_archery"
] as string[];

for potion in potionCoreTho {
  var n_potion = "potioncore:" + potion;
  var p_potion = <minecraft:potion>.withTag({Potion: n_potion});
  var p_lingering = <minecraft:lingering_potion>.withTag({Potion: n_potion});
  var p_splash = <minecraft:splash_potion>.withTag({Potion: n_potion});
  var p_arrow = <minecraft:tipped_arrow>.withTag({Potion: n_potion});
  mods.jei.JEI.removeAndHide(p_potion);
  mods.jei.JEI.removeAndHide(p_lingering);
  mods.jei.JEI.removeAndHide(p_splash);
  mods.jei.JEI.removeAndHide(p_arrow);
}
