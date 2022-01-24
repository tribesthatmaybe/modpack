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
   <cfm:crate_spruce:*>,
   <cfm:crate_birch:*>,
   <cfm:crate_jungle:*>,
   <cfm:crate_dark_oak:*>,
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
   <actuallyadditions:block_furnace_double>   // too many furnaces
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
recipes.removeShapeless(<tconstruct:throwball:1>);
recipes.removeShapeless(<tconstruct:throwball:1>);

//// recycle
// people gonna end up with extra lore
recipes.addShapeless(<minecraft:paper>, [<loreexpansion:lore_scrap>]);

//// allow crafting of lore journal
recipes.addShaped(<loreexpansion:lore_journal>, [[null, <minecraft:book>, null],[null, <minecraft:gold_nugget>, null], [null, <minecraft:book>, null]]);

//// ore balancing
// blocks only from tinkers
recipes.removeShaped(<minecraft:iron_block>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>,<minecraft:iron_ingot>],
                                             [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
                                             [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
recipes.removeShaped(<minecraft:gold_block>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>,<minecraft:gold_ingot>],
                                             [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
                                             [<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
// copper
recipes.removeShaped(<mekanism:basicblock:12>, [[<mekanism:ingot:5>, <mekanism:ingot:5>,<mekanism:ingot:5>],
                                               [<mekanism:ingot:5>, <mekanism:ingot:5>, <mekanism:ingot:5>],
                                               [<mekanism:ingot:5>, <mekanism:ingot:5>, <mekanism:ingot:5>]]);
// lead
recipes.removeShaped(<immersiveengineering:storage:2>, [[<immersiveengineering:metal:2>, <immersiveengineering:metal:2>,<immersiveengineering:metal:2>],
                                               [<immersiveengineering:metal:2>, <immersiveengineering:metal:2>, <immersiveengineering:metal:2>],
                                               [<immersiveengineering:metal:2>, <immersiveengineering:metal:2>, <immersiveengineering:metal:2>]]);


//// paper and paper products
// craftable from sawdust same as sugarcane
recipes.addShaped(<minecraft:paper> * 3, [[null, null, null],[<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>], [null, null, null]]);
recipes.removeShaped(<minecraft:paper> * 6, [[null, null, null], [<mekanism:sawdust>, <mekanism:sawdust>, <mekanism:sawdust>], [null, null, null]]);

// rice
recipes.addShaped(<minecraft:paper> * 3, [[null, null, null],[<harvestcraft:riceitem>, <harvestcraft:riceitem>, <harvestcraft:riceitem>], [null, null, null]]);

// string consistency
recipes.removeShapeless(<minecraft:string>, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);
recipes.addShapeless(<minecraft:string> * 2, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);
recipes.removeShapeless(<minecraft:string> * 2, [<plants2:generic>, <plants2:generic>, <plants2:generic>, <plants2:generic>, <plants2:generic>]);
recipes.addShapeless(<minecraft:string> * 2, [<plants2:generic>, <plants2:generic>, <plants2:generic>]);

// instant community generated teleportation is hard
recipes.addShaped(<waystones:warp_stone>, [[<actuallyadditions:item_crystal_empowered>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered:1>],
					  [<mysticalagriculture:crafting:2>,
					  <mekanism:teleportationcore>,
					  <mysticalagriculture:crafting:2>],
					  [<actuallyadditions:item_crystal_empowered:1>,
					  <mysticalagriculture:crafting:2>,
					  <actuallyadditions:item_crystal_empowered>]]);
recipes.removeShaped(<waystones:warp_stone>, [[<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>],
					      [<minecraft:ender_pearl>, <minecraft:emerald>, <minecraft:ender_pearl>],
					      [<ore:dyePurple>, <minecraft:ender_pearl>, <ore:dyePurple>]]);

// skilled construction but not use of furniture
recipes.removeShaped(<cfm:chair_oak>, [[<minecraft:planks>, null, null],
				      [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				      [<minecraft:planks>, null, <minecraft:planks>]]);
recipes.addShaped(<cfm:chair_oak>, [[<minecraft:planks>, null, null],
				   [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
				   [<minecraft:planks>, <cfm:item_hammer>.reuse(), <minecraft:planks>]]);
recipes.removeShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],
					   [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					   [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:chair_spruce>, [[<minecraft:planks:1>, null, null],
				      [<minecraft:planks:1>, <minecraft:planks:1>, <minecraft:planks:1>],
				      [<minecraft:planks:1>, <cfm:item_hammer>.reuse(), <minecraft:planks:1>]]);
recipes.removeShaped(<cfm:chair_birch>, [[<minecraft:planks:2>, null, null],
					[<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
					[<minecraft:planks:2>, null, <minecraft:planks:2>]]);
recipes.addShaped(<cfm:chair_birch>, [[<minecraft:planks:2>, null, null],
				     [<minecraft:planks:2>, <minecraft:planks:2>, <minecraft:planks:2>],
				     [<minecraft:planks:2>, <cfm:item_hammer>.reuse(), <minecraft:planks:2>]]);
recipes.removeShaped(<cfm:chair_jungle>, [[<minecraft:planks:3>, null, null],
					[<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
					[<minecraft:planks:3>, null, <minecraft:planks:3>]]);
recipes.addShaped(<cfm:chair_jungle>, [[<minecraft:planks:3>, null, null],
				     [<minecraft:planks:3>, <minecraft:planks:3>, <minecraft:planks:3>],
				     [<minecraft:planks:3>, <cfm:item_hammer>.reuse(), <minecraft:planks:3>]]);
recipes.removeShaped(<cfm:chair_acacia>, [[<minecraft:planks:4>, null, null],
					[<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
					[<minecraft:planks:4>, null, <minecraft:planks:4>]]);
recipes.addShaped(<cfm:chair_acacia>, [[<minecraft:planks:4>, null, null],
				     [<minecraft:planks:4>, <minecraft:planks:4>, <minecraft:planks:4>],
				     [<minecraft:planks:4>, <cfm:item_hammer>.reuse(), <minecraft:planks:4>]]);
recipes.removeShaped(<cfm:chair_dark_oak>, [[<minecraft:planks:5>, null, null],
					[<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
					[<minecraft:planks:5>, null, <minecraft:planks:5>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<minecraft:planks:5>, null, null],
				     [<minecraft:planks:5>, <minecraft:planks:5>, <minecraft:planks:5>],
				     [<minecraft:planks:5>, <cfm:item_hammer>.reuse(), <minecraft:planks:5>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],
				     [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
				     [<plants2:planks:2>, <cfm:item_hammer>.reuse(), <plants2:planks:2>]]);
recipes.removeShaped(<cfm:chair_diorite>, [[<minecraft:stone:3>, null, null],
					[<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
					[<minecraft:stone:3>, null, <minecraft:stone:3>]]);
recipes.addShaped(<cfm:chair_diorite>, [[<minecraft:stone:3>, null, null],
				     [<minecraft:stone:3>, <minecraft:stone:3>, <minecraft:stone:3>],
				     [<minecraft:stone:3>, <cfm:item_hammer>.reuse(), <minecraft:stone:3>]]);
recipes.removeShaped(<cfm:chair_granite>, [[<minecraft:stone:1>, null, null],
					[<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
					[<minecraft:stone:1>, null, <minecraft:stone:1>]]);
recipes.addShaped(<cfm:chair_granite>, [[<minecraft:stone:1>, null, null],
				     [<minecraft:stone:1>, <minecraft:stone:1>, <minecraft:stone:1>],
				     [<minecraft:stone:1>, <cfm:item_hammer>.reuse(), <minecraft:stone:1>]]);
recipes.removeShaped(<cfm:chair_andesite>, [[<minecraft:stone:5>, null, null],
					[<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
					[<minecraft:stone:5>, null, <minecraft:stone:5>]]);
recipes.addShaped(<cfm:chair_andesite>, [[<minecraft:stone:5>, null, null],
				     [<minecraft:stone:5>, <minecraft:stone:5>, <minecraft:stone:5>],
				     [<minecraft:stone:5>, <cfm:item_hammer>.reuse(), <minecraft:stone:5>]]);
recipes.removeShaped(<cfm:chair_stone>, [[<minecraft:cobblestone>, null, null],
					[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
					[<minecraft:cobblestone>, null, <minecraft:cobblestone>]]);
recipes.addShaped(<cfm:chair_stone>, [[<minecraft:cobblestone>, null, null],
				     [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
				     [<minecraft:cobblestone>, <cfm:item_hammer>.reuse(), <minecraft:cobblestone>]]);
