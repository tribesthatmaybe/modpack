import crafttweaker.item.IItemStack;

// we want mystical agriculture for the post scarcity vibes
val MystiWidgets = [
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
                    # arrowheads
                    <mysticalagriculture:gear:15>,
                    <mysticalagriculture:gear:16>,
                    <mysticalagriculture:gear:17>,
                    <mysticalagriculture:gear:18>,
                    <mysticalagriculture:gear:19>
] as IItemStack[];
for widget in MystiWidgets {
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
