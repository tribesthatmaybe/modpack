import crafttweaker.item.IItemStack;

// soulium
mods.jei.JEI.removeAndHide(<mysticalagriculture:crafting:45>);
recipes.remove(<mysticalagriculture:ingot_storage:6>);
recipes.addShaped(<mysticalagriculture:ingot_storage:6>, [[<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>],
							  [<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>],
							  [<mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>, <mysticalagriculture:crafting:38>]]);
recipes.addShapeless(<mysticalagriculture:crafting:38> * 9, [<mysticalagriculture:ingot_storage:6>]);
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
//// salty tho
mods.immersivetechnology.Distiller.removeRecipe(<liquid:water>);
mods.immersivetechnology.Distiller.addRecipe(<liquid:distwater> * 500, <liquid:water> * 1000, <mekanism:salt>, 5000, 20, 0.25);

