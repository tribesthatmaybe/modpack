import crafttweaker.item.IItemStack;
// some things get removed for game balance reasons

//// too much storage
// we prefer iron chest remixes, storage drawers, ae2
// if we need these in creative need to /give them
val tooMuchStorage = [
   <actuallyadditions:block_giant_chest>,
   <actuallyadditions:block_giant_chest_medium>,
   <actuallyadditions:block_giant_chest_large>,
   <extrautils2:drum:1>,
   <extrautils2:drum:2>,
   <extrautils2:drum:3>,
   <mekanism:basicblock:6>.withTag({tier:0}),
   <mekanism:basicblock:6>.withTag({tier:1}),
   <mekanism:basicblock:6>.withTag({tier:2}),
   <mekanism:basicblock:6>.withTag({tier:3}),
   <mekanism:basicblock:6>.withTag({tier:4})
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
   <cyclicmagic:trash>,
   <cfm:crate:*>,           // dupe
   <cfm:computer>,          // op kinda
   <cfm:printer>,           // def op
   <cfm:electric_fence>,    // just use ie tho
   <toughasnails:fruit_juice:*>   // use pams
] as IItemStack[];

for widget in unncesaryThings {
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
// this will be a non-craftable blueprint
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:missile>, [<mekanism:plasticblock:8>,
                                                                          <cyclicmagic:ender_tnt_3>,
                                                                          <immersiveengineering:material:8>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <mekanism:nugget:4>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:stun_grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:glowstone_dust>,
                                                                          <minecraft:glowstone_dust>]);
// weapons
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
recipes.addShaped(<cgm:bazooka>, [[<mekanism:plasticblock:8>, <mekanism:plasticblock:8>, <mekanism:plasticblock:8>],
                                 [<opencomputers:component>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>],
                                 [<immersiveengineering:material:13>, <immersiveengineering:material:16>, null]]);
// parts
recipes.addShaped(<cgm:scope>, [[null, null, null],
                               [null, <immersiveengineering:toolupgrade:8>, null],
                               [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:1>, [[null, null, null],
                                 [<immersiveengineering:material:8>, <immersiveengineering:toolupgrade:8>, <minecraft:glass>],
                                 [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:2>, [[null, null, null],
                                 [<alchemistry:ingot:88>, <immersiveengineering:toolupgrade:8>, <tconstruct:seared_glass>],
                                 [null, <immersiveengineering:material:9>, null]]);

//// booms
// efln
recipes.addShaped(<tconstruct:throwball:1> * 4, [
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>],
                                           [<immersiveengineering:material:2>, <immersiveengineering:wooden_device0:4>, <immersiveengineering:material:2>],
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>]]);

//// recycle
// people gonna end up with extra lore
recipes.addShapeless(<minecraft:paper>, [<loreexpansion:lore_scrap>]);
