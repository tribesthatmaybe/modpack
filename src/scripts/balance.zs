import crafttweaker.item.IItemStack;
// some things get removed for game balance reasons


// we may want these in creative but
// not allow them to be built
val tooMuchStorage = [
   <actuallyadditions:block_giant_chest>,
   <actuallyadditions:block_giant_chest_medium>,
   <actuallyadditions:block_giant_chest_large>,
   <extrautils2:drum:1>,
   <extrautils2:drum:2>,
   <extrautils2:drum:3>
] as IItemStack[];

// do not want these at all
val unncesaryStorage = [
   <vehicle:fuel_drum>,
   <vehicle:industrial_fuel_drum>,
   <actuallyadditions:item_chest_to_crate_upgrade>,
   <actuallyadditions:item_small_to_medium_crate_upgrade>,
   <actuallyadditions:item_medium_to_large_crate_upgrade>,
   <cgm:workbench>,         // these are created differently,
   <cgm:handgun>,           // just use the revolver lol
   <cgm:rifle>              // just use the railgun lol
] as IItemStack[];

for widget in tooMuchStorage {
  recipes.remove(widget);
}

for widget in unncesaryStorage {
  recipes.remove(widget);
  mods.jei.JEI.removeAndHide(widget);
}


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
