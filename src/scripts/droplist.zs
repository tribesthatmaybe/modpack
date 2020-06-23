import crafttweaker.item.IItemStack;

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
                    <mysticalagriculture:watering_can:0>,
                    <mysticalagriculture:watering_can:1>,
                    <mysticalagriculture:watering_can:2>,
                    <mysticalagriculture:watering_can:3>,
                    <mysticalagriculture:watering_can:4>,
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
                    # furnaces
                    <mysticalagriculture:inferium_furnace:0>,
                    <mysticalagriculture:prudentium_furnace:0>,
                    <mysticalagriculture:intermedium_furnace:0>,
                    <mysticalagriculture:intermedium_furnace:0>,
                    <mysticalagriculture:superium_furnace:0>,
                    <mysticalagriculture:supremium_furnace:0>,
                    <mysticalagriculture:ultimate_furnace:0>,
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
    <betterquesting:extra_life:2>
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
    <toughasnails:jelled_slime_boots>
] as IItemStack[];
for widget in NailsTho {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}
