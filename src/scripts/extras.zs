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
// only use the intermediary bits of bibliocraft (see note in droplist.zs)
// except for the saw
recipes.addShaped(<bibliocraft:framingsaw>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
					    [null, <minecraft:iron_ingot>, <plants2:planks:2>],
					    [null, null, <plants2:planks:2>]]);
// and framing sheets
recipes.addShapeless(<bibliocraft:framingsheet> * 2, [<plants2:planks:2>, <bibliocraft:framingsaw>]);

// quark dark oak stuff
recipes.addShaped(<chisel:bookshelf_darkoak>, [[<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>],
					       [<minecraft:book>, <minecraft:book>, <minecraft:book>],
					       [<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>]]);

// maccaws bridges stuff
recipes.addShaped(<mcwbridges:dark_oak_log_bridge_middle> * 4, [[null, null, null],
							        [<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>],
								[<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:rope_dark_oak_bridge> * 4, [[null, null, null],
						          [<minecraft:string>, null, <minecraft:string>],
							  [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:dark_oak_rail_bridge> * 4, [[null, null, null],
						          [<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>],
							  [<minecraft:dark_oak_fence>, <plants2:black_kauri_slab>, <minecraft:dark_oak_fence>]]);

// mcf stuff
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					           [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
						   [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:desk_dark_oak>, [[<plants2:log_0>, <plants2:log_0>, <plants2:log_0>],
				        [<plants2:planks:2>, null, <plants2:planks:2>],
					[<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:door_bell_dark_oak>, [[<minecraft:noteblock>, <minecraft:stone_button>, null],
					     [<plants2:log_0>, null, null],
					     [null, null, null]]);
recipes.addShaped(<cfm:mail_box_dark_oak>, [[<plants2:log_0>, <minecraft:book>, <plants2:log_0>],
					    [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					    [null, <plants2:planks:2>, null]]);
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],
					           [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
						   [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],
					             [null, null, null],
						     [null, null, null]]);
recipes.addShaped(<cfm:upgraded_fence_dark_oak> * 8, [[<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>],
						      [<minecraft:dark_oak_fence>, <plants2:log_0>, <minecraft:dark_oak_fence>],
						      [<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],
					             [null, null, null],
						     [null, null, null]]);

//// some more geolosys immersion / aesthetic stuff
// limonite is like shitty hematite
recipes.addShapeless(<mysticalworld:iron_dust_tiny> * 4, [<immersiveengineering:tool>, <geolosys:ore:1>]);
mods.immersiveengineering.Crusher.addRecipe(<mysticalworld:iron_dust_tiny> * 4,
                                            <geolosys:ore:1>, 2048,
                                            <mysticalworld:iron_dust_tiny> * 2, 0.25);
mods.appliedenergistics2.Grinder.addRecipe(<mysticalworld:iron_dust_tiny> * 4,
                                            <geolosys:ore:1>, 4,
                                            <mysticalworld:iron_dust_tiny>, 0.05);
// malachite
recipes.addShapeless(<mekanism:dust:3>, [<immersiveengineering:tool>, <geolosys:ore:2>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:3>,
                                            <geolosys:ore:2>, 4,
                                            <mysticalworld:copper_dust_tiny>, 0.05);

// azurite
recipes.addShapeless(<mysticalworld:copper_dust_tiny> * 4, [<immersiveengineering:tool>, <geolosys:ore:3>]);
mods.appliedenergistics2.Grinder.addRecipe(<mysticalworld:copper_dust_tiny> * 4,
                                            <geolosys:ore:3>, 4,
                                            <mysticalworld:copper_dust_tiny>, 0.05);

// cassiterite
recipes.addShapeless(<mekanism:dust:4>, [<immersiveengineering:tool>, <geolosys:ore:4>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:4>,
                                            <geolosys:ore:4>, 4,
                                            <mekanism:nugget:6>, 0.05);

// teallite
recipes.addShapeless(<mekanism:dust:6>, [<immersiveengineering:tool>, <geolosys:ore:5>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:6>,
                                            <geolosys:ore:5>, 4,
                                            <mekanism:dust:4>, 0.5);

// galena
recipes.addShapeless(<mekanism:dust:5>, [<immersiveengineering:tool>, <geolosys:ore:6>]);
mods.appliedenergistics2.Grinder.addRecipe(<mekanism:dust:5>,
                                            <geolosys:ore:6>, 4,
                                            <mekanism:dust:6>, 0.8);

// bauxite
recipes.addShapeless(<immersiveengineering:metal:10>, [<immersiveengineering:tool>, <geolosys:ore:7>]);
mods.appliedenergistics2.Grinder.addRecipe(<immersiveengineering:metal:10>,
                                            <geolosys:ore:7>, 4,
                                            <immersiveengineering:metal:21> * 2, 0.25);
//// balancing some dusts
// no aa diamond
mods.jei.JEI.removeAndHide(<actuallyadditions:item_dust:2>);
// no aa quartz
mods.jei.JEI.removeAndHide(<actuallyadditions:item_dust:5>);
// hand grindable lapis and emerald and black quartz
mods.appliedenergistics2.Grinder.addRecipe(<actuallyadditions:item_dust:3>, <minecraft:emerald>, 6);
mods.appliedenergistics2.Grinder.addRecipe(<actuallyadditions:item_dust:4>, <minecraft:dye:4>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<actuallyadditions:item_dust:7>, <actuallyadditions:item_misc:5>, 4);
