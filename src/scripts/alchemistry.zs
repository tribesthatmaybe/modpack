import crafttweaker.item.IItemStack;

val water = <alchemistry:compound:7>;
val oxygen = <alchemistry:element:8>;
val aluminum = <alchemistry:element:13>;
val iron = <alchemistry:element:26>;
val silicon = <alchemistry:element:14>;
val calcium = <alchemistry:element:20>;
val phosphorus = <alchemistry:element:15>;
val titanium = <alchemistry:element:22>;
val potassium = <alchemistry:element:19>;
// packed ice to water
mods.alchemistry.Dissolver.addRecipe(<minecraft:packed_ice>, false, 1, [[100, water * 24]]);

mods.alchemistry.Electrolyzer.addRecipe(<liquid:lava> * 500, <mysticalagriculture:crafting>, 25,
						      oxygen * 5, iron * 5, silicon * 5, 100, calcium * 2, 30);
mods.alchemistry.Electrolyzer.addRecipe(<liquid:lava> * 1000, <mysticalagriculture:crafting:1>, 25,
						      iron * 7, titanium * 3, calcium * 5, 50, phosphorus * 3, 60);
mods.alchemistry.Electrolyzer.addRecipe(<liquid:lava> * 1500, <mysticalagriculture:crafting:2>, 25,
						      titanium * 7, phosphorus * 3, potassium * 2, 30, silicon * 8, 60);
