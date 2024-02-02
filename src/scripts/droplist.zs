import crafttweaker.item.IItemStack;
// some things get removed because too many things

// pretty sure we can drop these bc we use tinkers for abyssal kit
// note some of them still need to have their rituals implemented
val AbyssalWidgets = [
    <abyssalcraft:apick>,
    <abyssalcraft:aaxe>,
    <abyssalcraft:ashovel>,
    <abyssalcraft:asword>,
    <abyssalcraft:ahoe>,
    <abyssalcraft:corpick>,
    <abyssalcraft:coraxe>,
    <abyssalcraft:corshovel>,
    <abyssalcraft:corsword>,
    <abyssalcraft:corhoe>,
    <abyssalcraft:dreadiumpickaxe>,
    <abyssalcraft:dreadiumaxe>,
    <abyssalcraft:dreadiumshovel>,
    <abyssalcraft:dreadiumsword>,
    <abyssalcraft:dreadiumhoe>,
    <abyssalcraft:ahelmet>,
    <abyssalcraft:aplate>,
    <abyssalcraft:alegs>,
    <abyssalcraft:aboots>,
    <abyssalcraft:corhelmet>,
    <abyssalcraft:corplate>,
    <abyssalcraft:corlegs>,
    <abyssalcraft:corboots>,
    <abyssalcraft:dreadiumhelmet>,
    <abyssalcraft:dreadiumplate>,
    <abyssalcraft:dreadiumlegs>,
    <abyssalcraft:dreadiumboots>
] as IItemStack[];
for widget in AbyssalWidgets {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}
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
                    <mysticalagriculture:inferium_shears>,
                    <mysticalagriculture:prudentium_shears>,
                    <mysticalagriculture:intermedium_shears>,
                    <mysticalagriculture:superium_shears>,
                    <mysticalagriculture:supremium_shears>,
                    # weapons
                    <mysticalagriculture:inferium_arrow>,
                    <mysticalagriculture:prudentium_arrow>,
                    <mysticalagriculture:intermedium_arrow>,
                    <mysticalagriculture:superium_arrow>,
                    <mysticalagriculture:supremium_arrow>,
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
		    <mysticalworld:silver_sword>,
		    <immersiveengineering:sword_steel>,
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
                    <mysticalagriculture:crafting:54>,
                    <mysticalagriculture:miners_torch>
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
//    <cyclicmagic:mattock>,
    <actuallyadditions:block_greenhouse_glass>,
    <projectred-core:resource_item:301>,
    <projectred-core:resource_item:310>,
    <projectred-core:resource_item:311>,
    <projectred-core:resource_item:312>,
    <projectred-core:resource_item:341>,
    <projectred-core:resource_item:342>,
    <projectred-core:resource_item:300>,
    <microblockcbe:saw_diamond>,
    <projectred-core:resource_item:421>,
    <projectred-core:resource_item:420>,
    <projectred-core:resource_item:410>,    // don't need every project red piece
    <projectred-core:resource_item:400>,
    <projectred-core:resource_item:401>,
    <projectred-core:resource_item:402>,
    <projectred-core:resource_item:600>,
    <projectred-core:drawplate>,
    <mekanism:enrichediron>,
    <betterbuilderswands:wandunbreakable:12>,
    <betterbuilderswands:wandunbreakable:13>,
    <betterbuilderswands:wandunbreakable:14>,
    <actuallyadditions:item_misc>,
//    <abyssalcraft:ironp>,           // preferring pam's for majority of food stuff
//    <abyssalcraft:dirtyplate>,
//    <abyssalcraft:cloth>,
    <bibliocraft:cookiejar>,
    <cfm:cookie_jar>,
    <cfm:esky:*>,
    <actuallyadditions:block_misc:7>,   // no idea what this "casing" is supposed to be used for?
    <mekanism:nugget:3>           // glowstone nugget
] as IItemStack[];
for widget in NarrativeTho {
  mods.jei.JEI.removeAndHide(widget);
  recipes.remove(widget);
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
    <immersiveengineering:pickaxe_steel>,
    <mysticalworld:copper_pickaxe>,
    <mysticalworld:silver_pickaxe>,
    <mysticalworld:amethyst_pickaxe>,
    <plants2:crystal_pickaxe>,
    <plants2:dark_crystal_pickaxe>,
    <botania:manasteelshovel>,
    <botania:elementiumshovel>,
    <immersiveengineering:shovel_steel>,
    <mysticalworld:copper_shovel>,
    <mysticalworld:silver_shovel>,
    <mysticalworld:amethyst_shovel>,
    <plants2:crystal_shovel>,
    <plants2:dark_crystal_shovel>,
    <immersiveengineering:hoe_steel>,
    <mysticalworld:copper_hoe>,
    <mysticalworld:silver_hoe>,
    <mysticalworld:amethyst_hoe>,
    <plants2:crystal_hoe>,
    <plants2:dark_crystal_hoe>,
    <botania:elementiumaxe>,
    <botania:manasteelaxe>,
    <immersiveengineering:axe_steel>,
    <mysticalworld:copper_axe>,
    <mysticalworld:silver_axe>,
    <mysticalworld:amethyst_axe>,
    <plants2:crystal_axe>,
    <plants2:dark_crystal_axe>,
    <plants2:dark_crystal_sword>,
    <plants2:crystal_sword>,
    <botania:manasteelsword>,
    <mekanism:walkietalkie>,
    <openblocks:imaginary:*>,
    <botania:waterbowl>,
    <actuallyadditions:item_chest_to_crate_upgrade>,
    <actuallyadditions:item_small_to_medium_crate_upgrade>,
    <actuallyadditions:item_medium_to_large_crate_upgrade>,
    <vc:airship_workbench>,
    <actuallyadditions:block_tiny_torch>,
    <tconstruct:stone_torch>,
    <bountifulbaubles:flaregun>,
    <bountifulbaubles:flare_red>,
    <bountifulbaubles:ringflywheel>,
    <bountifulbaubles:ringflywheeladvanced>,
    <railcraft:tool_axe_steel>,
    <railcraft:tool_hoe_steel>
] as IItemStack[];

for widget in tooManyTools {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}
// lotta teck and equipment that is a dupe
var tooMuchEquipment = [
    <actuallyadditions:item_canola_seed>,
    <actuallyadditions:item_misc:23>,
    <actuallyadditions:item_misc:24>,
    <actuallyadditions:block_oil_generator>,
    <immersivetech:metal_trash:2>,
    <immersivetech:metal_trash:1>,
    <immersivetech:metal_trash>,
    <actuallyadditions:block_enervator>,
    <actuallyadditions:block_energizer>,
    <openblocks:path>,
    <mysticalworld:copper_helmet>,
    <mysticalworld:copper_chestplate>,
    <mysticalworld:copper_leggings>,
    <mysticalworld:copper_boots>,
    <mysticalworld:silver_helmet>,
    <mysticalworld:silver_chestplate>,
    <mysticalworld:silver_leggings>,
    <mysticalworld:silver_boots>,
    <mysticalworld:copper_sword>
] as IItemStack[];

for widget in tooMuchEquipment {
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

//// extra recipes we do not need
// pointless string generation
recipes.removeShapeless(<minecraft:string>, [<mysticalworld:silk_thread>, <mysticalworld:silk_thread>]);

recipes.removeShapeless(<harvestcraft:wovencottonitem> * 3, [<ore:materialCloth>, <ore:materialCloth>, <ore:materialCloth>]);
recipes.removeShaped(<minecraft:leather_leggings>, [[<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
						   [<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>],
						   [<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>]]);
recipes.removeShaped(<minecraft:leather_helmet>, [[<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
		      				  [<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>]]);
recipes.removeShaped(<minecraft:leather_chestplate>, [[<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>],
						     [<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>],
						     [<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>]]);
recipes.removeShaped(<minecraft:leather_boots>, [[<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>],
						[<harvestcraft:wovencottonitem>, null, <harvestcraft:wovencottonitem>]]);

// sadly, bibliocraft stuff is super funky and will often render oddly or straight-up crash
// some we can breakup with others we can not
// i can't break up with the clipboard or big book tho let alone bookshelves
// or aesthetic tables
var ripBibliocraft = [
    <bibliocraft:lanterngold:*>,
    <bibliocraft:lanterniron:*>,
    <bibliocraft:lampgold:*>,
    <bibliocraft:lampiron:*>,
    <bibliocraft:fancysign:*>,
    <bibliocraft:fancyworkbench:*>,
    <bibliocraft:toolrack:*>,
    <bibliocraft:label:*>,
    <bibliocraft:case:*>,
    <bibliocraft:shelf:*>,
//    <bibliocraft:bookcasecreative:*>,
    <bibliocraft:swordpedestal:*>
] as IItemStack[];
for widget in ripBibliocraft {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}

//// too much storage
// we prefer iron chest remixes, storage drawers, ae2
// if we need these in creative need to /give them
val tooMuchStorage = [
   <actuallyadditions:block_giant_chest>,
   <actuallyadditions:block_giant_chest_medium>,
   <actuallyadditions:block_giant_chest_large>,
   <actuallyadditions:item_crate_keeper>,
   <mekanism:basicblock:6>.withTag({tier:0}),
   <mekanism:basicblock:6>.withTag({tier:1}),
   <mekanism:basicblock:6>.withTag({tier:2}),
   <mekanism:basicblock:6>.withTag({tier:3}),
   <mekanism:basicblock:6>.withTag({tier:4}),
   <cfm:wall_cabinet:*>,
   <cfm:crate:*>,
   <cfm:crate_acacia:*>,
   <cfm:crate_spruce:*>,
   <cfm:crate_birch:*>,
   <cfm:crate_jungle:*>,
   <cfm:crate_dark_oak:*>,
   <abyssalcraft:crate>,
] as IItemStack[];

for widget in tooMuchStorage {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}

// do not want these at all
val unncesaryThings = [
   <vehicle:fuel_drum>,
   <vehicle:industrial_fuel_drum>,
   <actuallyadditions:item_chest_to_crate_upgrade>,
   <actuallyadditions:item_small_to_medium_crate_upgrade>,
   <actuallyadditions:item_medium_to_large_crate_upgrade>,
   <cgm:workbench>,         // these are created differently,
   <cgm:handgun>,           // just use the revolver lol
   <cgm:rifle>,             // just use the railgun lol
   <cgm:advanced_ammo>,     // only used by rifle
   <cfm:counter:*>,         // prefer cooking for blockheads
   <cfm:counter_sink:*>,
   <cfm:counter_drawer:*>,
   <cfm:cabinet_kitchen:*>,
   <cfm:oven>,
   <cfm:microwave>,
   <cfm:toaster>,
   <cfm:item_bread_slice>,
   <cfm:chopping_board>,
   <cfm:item_toast>,
   <cfm:item_knife>,
   <cfm:item_cool_pack>,
   <cfm:dishwasher>,        // kinda op tho
   <cfm:washing_machine>,
   <cfm:fairy_light>,       // got a whole mod for this
   <cfm:bin>,               // prefer extra utils trash
//   <cyclicmagic:trash>,
   <cfm:computer>,          // op kinda
   <cfm:printer>,           // def op
   <cfm:electric_fence>,    // just use ie tho
   <cfm:white_fence>,
   <cfm:upgraded_fence_oak>,  // these fences aren't very good
   <cfm:upgraded_fence_spruce>,
   <cfm:upgraded_fence_jungle>,
   <cfm:upgraded_fence_dark_oak>,
   <toughasnails:fruit_juice:*>,   // use pams
   <vehicle:traffic_cone>,                    // prefer traffic control cones
   <actuallyadditions:block_furnace_double>,   // too many furnaces
   <minecraft:chainmail_helmet>,         // early game but not bc nuggets gated
   <minecraft:chainmail_chestplate>,
   <minecraft:chainmail_leggings>,
   <minecraft:chainmail_boots>,
   <minecraft:golden_helmet>,             // smeltery tho
   <minecraft:golden_chestplate>,
   <minecraft:golden_leggings>,
   <minecraft:golden_boots>,
   <minecraft:iron_helmet>,
   <minecraft:iron_chestplate>,
   <minecraft:iron_leggings>,
   <minecraft:iron_boots>,
   <minecraft:diamond_helmet>,
   <minecraft:diamond_chestplate>,
   <minecraft:diamond_leggings>,
   <minecraft:diamond_boots>,
   <minecraft:golden_sword>,
   <minecraft:golden_shovel>,
   <minecraft:golden_pickaxe>,
   <minecraft:golden_axe>,
   <minecraft:golden_hoe>,
   <minecraft:diamond_sword>,
   <minecraft:diamond_shovel>,
   <minecraft:diamond_pickaxe>,
   <minecraft:diamond_axe>,
   <minecraft:diamond_hoe>,
   <minecraft:iron_sword>,
   <minecraft:iron_shovel>,
   <minecraft:iron_pickaxe>,
   <minecraft:iron_axe>,
   <minecraft:iron_hoe>,
   <mekanism:obsidiantnt>,
   <mekanism:basicblock:14>,     // using immersive tech kit for brine
   <mekanism:basicblock:15>,
   <mekanism:basicblock2>,
   <mekanism:basicblock2:5>,     // not using mekanism boiler
   <mekanism:basicblock2:6>,
   <mekanism:basicblock2:7>,
   <mekanism:basicblock2:8>,
   <actuallyadditions:block_laser_relay>,    // prefer conveyors/pipes/cables
   <actuallyadditions:block_laser_relay_advanced>,
   <actuallyadditions:block_laser_relay_extreme>,
   <actuallyadditions:block_laser_relay_fluids>,
   <actuallyadditions:block_laser_relay_item>,
   <actuallyadditions:block_laser_relay_item_whitelist>,
   <actuallyadditions:block_bio_reactor>,
   <actuallyadditions:block_item_viewer>,
   <actuallyadditions:block_fermenting_barrel>,
   <actuallyadditions:block_grinder>,
   <actuallyadditions:block_grinder_double>,
   <actuallyadditions:block_canola_press>,
   <actuallyadditions:block_inputter>,
   <actuallyadditions:block_inputter_advanced>,
   <actuallyadditions:block_furnace_solar>,
   <actuallyadditions:block_heat_collector>,
   <actuallyadditions:block_item_repairer>,
   <actuallyadditions:block_breaker>,
   <actuallyadditions:block_placer>,
   <actuallyadditions:block_dropper>,
   <actuallyadditions:block_fluid_placer>,
   <actuallyadditions:block_fluid_collector>,
   <actuallyadditions:item_laser_upgrade_invisibility>,
   <actuallyadditions:item_laser_upgrade_range>,
   <actuallyadditions:block_phantom_liquiface>,
   <actuallyadditions:block_phantom_placer>,
   <actuallyadditions:block_phantomface>,
   <actuallyadditions:block_phantom_energyface>,
   <actuallyadditions:block_phantom_redstoneface>,
   <actuallyadditions:item_phantom_connector>,
   <actuallyadditions:block_phantom_breaker>,
   <actuallyadditions:block_directional_breaker>,
   <actuallyadditions:block_miner>,
   <actuallyadditions:block_lava_factory_controller>,
   <actuallyadditions:block_feeder>,
   <actuallyadditions:item_water_bowl>,
   <actuallyadditions:block_colored_lamp:*>,
   <actuallyadditions:block_lamp_powerer:*>,
   <actuallyadditions:item_bag>,
   <actuallyadditions:item_void_bag>,
   <chisel:chisel_hitech>,
   <chiselsandbits:chisel_stone>,
   <mekanismgenerators:generator:8>,
   <mekanismgenerators:generator:9>,
   <mekanismgenerators:generator:10>,
   <mekanismgenerators:generator:11>,
   <mekanismgenerators:generator:12>,
   <mekanismgenerators:generator:13>,
   <mekanismgenerators:reactor>,
   <mekanismgenerators:reactor:1>,
   <mekanismgenerators:reactor:2>,
   <mekanismgenerators:reactor:3>,
   <mekanismgenerators:reactorglass>,
   <mekanismgenerators:reactorglass:1>,
   <mekanismgenerators:hohlraum>
] as IItemStack[];

for widget in unncesaryThings {
  mods.jei.JEI.removeAndHide(widget);
}
//// extra liquids
mods.jei.JEI.hide(<liquid:crystaloil>);
mods.jei.JEI.hide(<liquid:empoweredoil>);
mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: "crystaloil"}));
mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: "empoweredoil"}));

//// don't need to see these in jei
// gravestones just appear
for item in loadedMods["gravestone"].items {
    mods.jei.JEI.hide(item);
}
// can see architecturecraft bits in table
for i in 0 .. 93 {
    mods.jei.JEI.hide(<architecturecraft:shape>.withTag({Shape: i, BaseName: "minecraft:planks", BaseData: 0}));
}

//// not mucking with blaze powered stuff (0-9 is what we want to delete, but i guess the for loop is i < n ?)
for i in 0 .. 10 {
    mods.jei.JEI.removeAndHide(itemUtils.getItem("actuallyadditions:item_potion_ring", i));
    mods.jei.JEI.removeAndHide(itemUtils.getItem("actuallyadditions:item_potion_ring_advanced", i));
}
mods.jei.JEI.removeAndHide(<actuallyadditions:item_growth_ring>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_suction_ring>);
mods.jei.JEI.removeAndHide(<actuallyadditions:item_water_removal_ring>);

// not using multiblock mekanism generators
mods.mekanism.infuser.removeRecipe(<mekanismgenerators:hohlraum>);
