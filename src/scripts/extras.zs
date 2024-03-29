import mods.appliedenergistics2.Grinder;
import crafttweaker.item.IItemStack;

//// need to be explicit about some of the plants based items
//// this is especially important with black kauri wood as it
//// is the only native block rock desert tree

// vanilla dark oak stuff
recipes.addShaped(<minecraft:dark_oak_fence_gate>, [[null, null, null],
						   [<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>],
						   [<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>]]);
recipes.addShaped(<minecraft:dark_oak_boat>, [[null, null, null],
					     [<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>,
					     <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<malisisdoors:trapdoor_dark_oak>, [[null, null, null],[<plants2:planks:2>,
						    <plants2:planks:2>, <plants2:planks:2>],
						    [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<minecraft:dark_oak_door>, [[null, <plants2:planks:2>,
					     <plants2:planks:2>],[null, <plants2:planks:2>, <plants2:planks:2>],
					     [null, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<minecraft:dark_oak_fence> * 3, [[null, null, null],
					     [<plants2:planks:2>, <minecraft:stick>, <plants2:planks:2>],
					     [<plants2:planks:2>, <minecraft:stick>, <plants2:planks:2>]]);
// can use the paneller to make the rest of the bibliocraft (framed) stuff
recipes.addShaped(<bibliocraft:furniturepaneler:5>, [[<minecraft:iron_ingot>, <bibliocraft:framingsaw>, <minecraft:iron_ingot>],[<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
// except for the saw
recipes.addShaped(<bibliocraft:framingsaw>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],[null, <minecraft:iron_ingot>, <plants2:planks:2>], [null, null, <plants2:planks:2>]]);
// and framing sheets
recipes.addShapeless(<bibliocraft:framingsheet> * 2, [<plants2:planks:2>, <bibliocraft:framingsaw>]);

// quark dark oak stuff
recipes.addShaped(<chisel:bookshelf_darkoak>, [[<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>],[<minecraft:book>, <minecraft:book>, <minecraft:book>], [<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>]]);
// we prefer the dark oak vanilla chest
recipes.removeShaped(<minecraft:chest>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);

// maccaws bridges stuff
recipes.addShaped(<mcwbridges:dark_oak_log_bridge_middle> * 4, [[null, null, null],[<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>], [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:rope_dark_oak_bridge> * 4, [[null, null, null],[<minecraft:string>, null, <minecraft:string>], [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:dark_oak_rail_bridge> * 4, [[null, null, null],[<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>], [<minecraft:dark_oak_fence>, <plants2:black_kauri_slab>, <minecraft:dark_oak_fence>]]);

// mcf stuff
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:desk_dark_oak>, [[<plants2:log_0>, <plants2:log_0>, <plants2:log_0>],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:door_bell_dark_oak>, [[<minecraft:noteblock>, <minecraft:stone_button>, null],[<plants2:log_0>, null, null], [null, null, null]]);
recipes.addShaped(<cfm:mail_box_dark_oak>, [[<plants2:log_0>, <minecraft:book>, <plants2:log_0>],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [null, <plants2:planks:2>, null]]);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>], [<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<cfm:upgraded_fence_dark_oak> * 8, [[<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>],[<minecraft:dark_oak_fence>, <plants2:log_0>, <minecraft:dark_oak_fence>], [<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],[null, null, null], [null, null, null]]);

// storage drawers stuff
// use this to build a framing table and then just build framed drawers
recipes.addShaped(<storagedrawers:trim:5>, [[<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>]]);
// block rock desert friendly way of building storage upgrade
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [[<storagedrawers:trim:5>, <minecraft:stick>, <storagedrawers:trim:5>],[<minecraft:stick>, <minecraft:chest>, <minecraft:stick>], [<storagedrawers:trim:5>, <minecraft:stick>, <storagedrawers:trim:5>]]);
// brd storage controller variant
recipes.addShaped(<storagedrawers:controller>, [[<storagedrawers:trim:5>, <minecraft:stone>, <storagedrawers:trim:5>],[<minecraft:comparator>, <storagedrawers:trim:5>, <minecraft:comparator>], [<minecraft:stone>, <minecraft:diamond>, <minecraft:stone>]]);
recipes.addShaped(<storagedrawers:controllerslave>, [[<storagedrawers:trim:5>, <minecraft:stone>, <storagedrawers:trim:5>],[<minecraft:comparator>, <storagedrawers:trim:5>, <minecraft:comparator>], [<minecraft:stone>, <minecraft:gold_ingot>, <minecraft:stone>]]);
// brd compacting drawer variant
recipes.addShaped(<storagedrawers:compdrawers>, [[<storagedrawers:trim:5>, <minecraft:stone>, <storagedrawers:trim:5>],[<minecraft:piston>, <storagedrawers:trim:5>, <minecraft:piston>], [<minecraft:stone>, <minecraft:iron_ingot>, <minecraft:stone>]]);

//// some more geolosys immersion / aesthetic stuff
// limonite is like shitty hematite
recipes.addShapeless(<mysticalworld:iron_dust_tiny> * 4, [<immersiveengineering:tool>, <geolosys:ore:1>]);
mods.immersiveengineering.Crusher.addRecipe(<mysticalworld:iron_dust_tiny> * 4,
                                            <geolosys:ore:1>, 2048,
                                            <mysticalworld:iron_dust_tiny> * 2, 0.25);
mods.appliedenergistics2.Grinder.addRecipe(<mysticalworld:iron_dust_tiny> * 4,
                                            <geolosys:ore:1>, 4,
                                            <mysticalworld:iron_dust_tiny>, 0.05);
mods.actuallyadditions.Crusher.addRecipe(<mysticalworld:iron_dust_tiny> * 4,
                                         <geolosys:ore:1>,
                                         <mysticalworld:iron_dust_tiny> * 2, 0.25);
mods.mekanism.crusher.addRecipe(<geolosys:ore:1>, <mysticalworld:iron_dust_tiny> * 4);

// malachite
recipes.addShapeless(<mekanism:dust:3>, [<immersiveengineering:tool>, <geolosys:ore:2>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:3>,
                                            <geolosys:ore:2>, 4,
                                            <mysticalworld:copper_dust_tiny>, 0.05);
mods.actuallyadditions.Crusher.addRecipe(<mekanism:dust:3>,
                                         <geolosys:ore:2>,
                                         <mysticalworld:copper_dust_tiny> * 2, 0.25);
mods.mekanism.crusher.addRecipe(<geolosys:ore:2>, <mekanism:dust:3>);

// azurite
recipes.addShapeless(<mysticalworld:copper_dust_tiny> * 4, [<immersiveengineering:tool>, <geolosys:ore:3>]);
mods.appliedenergistics2.Grinder.addRecipe(<mysticalworld:copper_dust_tiny> * 4,
                                            <geolosys:ore:3>, 4,
                                            <mysticalworld:copper_dust_tiny>, 0.05);
mods.actuallyadditions.Crusher.addRecipe(<mysticalworld:copper_dust_tiny> * 4,
                                         <geolosys:ore:3>,
                                         <mysticalworld:copper_dust_tiny> * 2, 0.25);
mods.mekanism.crusher.addRecipe(<geolosys:ore:3>, <mysticalworld:copper_dust_tiny> * 4);

// cassiterite
recipes.addShapeless(<mekanism:dust:4>, [<immersiveengineering:tool>, <geolosys:ore:4>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:4>,
                                            <geolosys:ore:4>, 4,
                                            <mekanism:nugget:6>, 0.05);
mods.actuallyadditions.Crusher.addRecipe(<mekanism:dust:4>,
                                         <geolosys:ore:4>,
                                         <mekanism:nugget:6> * 2, 0.25);
mods.mekanism.crusher.addRecipe(<geolosys:ore:4>, <mekanism:dust:4>);

// teallite
recipes.addShapeless(<mekanism:dust:6>, [<immersiveengineering:tool>, <geolosys:ore:5>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:6>,
                                            <geolosys:ore:5>, 4,
                                            <mekanism:dust:4>, 0.5);
mods.actuallyadditions.Crusher.addRecipe(<mekanism:dust:6>,
                                         <geolosys:ore:5>,
                                            <mekanism:dust:4>, 0.5);
mods.mekanism.crusher.addRecipe(<geolosys:ore:5>, <mekanism:dust:6>);

// galena
recipes.addShapeless(<mekanism:dust:5>, [<immersiveengineering:tool>, <geolosys:ore:6>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:5>,
                                            <geolosys:ore:6>, 4,
                                            <mekanism:dust:6>, 0.8);
mods.actuallyadditions.Crusher.addRecipe(<mekanism:dust:5>,
                                         <geolosys:ore:6>,
                                            <mekanism:dust:6>, 0.8);
mods.mekanism.crusher.addRecipe(<geolosys:ore:6>, <mekanism:dust:5>);

// bauxite
recipes.addShapeless(<immersiveengineering:metal:10>, [<immersiveengineering:tool>, <geolosys:ore:7>]);
mods.appliedenergistics2.Grinder.addRecipe(<immersiveengineering:metal:10>,
                                            <geolosys:ore:7>, 4,
                                            <immersiveengineering:metal:21> * 2, 0.25);
mods.actuallyadditions.Crusher.addRecipe(<immersiveengineering:metal:10>,
                                         <geolosys:ore:7>,
                                            <immersiveengineering:metal:21> * 2, 0.25);
mods.mekanism.crusher.addRecipe(<geolosys:ore:7>, <immersiveengineering:metal:10>);


//// too much storage
// we prefer iron chest remixes, storage drawers, ae2
// if we need these in creative need to /give them
val tooMuchStorage = [
   <actuallyadditions:block_giant_chest>,
   <actuallyadditions:block_giant_chest_medium>,
   <actuallyadditions:block_giant_chest_large>,
   <actuallyadditions:item_crate_keeper>,
   <extrautils2:drum:1>,
   <extrautils2:drum:2>,
   <extrautils2:drum:3>,
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
   <cyclicmagic:trash>,
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
