// need to be explicit about some of the plants based items
// this is especially important with black kauri wood as it
// is the only native block rock desert tree

// vanilla dark oak stuff
recipes.addShaped(<minecraft:dark_oak_fence_gate>, [[null, null, null],[<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>], [<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>]]);
recipes.addShaped(<minecraft:dark_oak_boat>, [[null, null, null],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<malisisdoors:trapdoor_dark_oak>, [[null, null, null],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<minecraft:dark_oak_door>, [[null, <plants2:planks:2>, <plants2:planks:2>],[null, <plants2:planks:2>, <plants2:planks:2>], [null, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<minecraft:dark_oak_fence> * 3, [[null, null, null],[<plants2:planks:2>, <minecraft:stick>, <plants2:planks:2>], [<plants2:planks:2>, <minecraft:stick>, <plants2:planks:2>]]);

// can use the paneller to make the rest of the bibliocraft (framed) stuff
recipes.addShaped(<bibliocraft:furniturepaneler:5>, [[<minecraft:iron_ingot>, <bibliocraft:framingsaw>, <minecraft:iron_ingot>],[<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);

// quark dark oak stuff
recipes.addShaped(<chisel:bookshelf_darkoak>, [[<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>],[<minecraft:book>, <minecraft:book>, <minecraft:book>], [<plants2:black_kauri_stairs>, null, <plants2:black_kauri_stairs>]]);
// we prefer the dark oak vanilla chest
recipes.removeShaped(<minecraft:chest>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);

// maccaws bridges stuff
recipes.addShaped(<mcwbridges:dark_oak_log_bridge_middle> * 4, [[null, null, null],[<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>], [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:rope_dark_oak_bridge> * 4, [[null, null, null],[<minecraft:string>, null, <minecraft:string>], [<plants2:black_kauri_slab>, <plants2:black_kauri_slab>, <plants2:black_kauri_slab>]]);
recipes.addShaped(<mcwbridges:dark_oak_rail_bridge> * 4, [[null, null, null],[<minecraft:dark_oak_fence>, null, <minecraft:dark_oak_fence>], [<minecraft:dark_oak_fence>, <plants2:black_kauri_slab>, <minecraft:dark_oak_fence>]]);

// mcf stuff
recipes.addShaped(<cfm:coffee_table_dark_oak>, [[null, null, null],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:table_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[null, <plants2:planks:2>, null], [null, <plants2:planks:2>, null]]);
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:chair_dark_oak>, [[<plants2:planks:2>, null, null],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:desk_cabinet_dark_oak>, [[<plants2:log_0>, <plants2:log_0>, <plants2:log_0>],[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>], [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:desk_dark_oak>, [[<plants2:log_0>, <plants2:log_0>, <plants2:log_0>],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:planks:2>, null, <plants2:planks:2>]]);
recipes.addShaped(<cfm:crate_dark_oak>, [[<plants2:log_0>, <plants2:planks:2>, <plants2:log_0>],[<plants2:planks:2>, null, <plants2:planks:2>], [<plants2:log_0>, <plants2:planks:2>, <plants2:log_0>]]);
recipes.addShaped(<cfm:door_bell_dark_oak>, [[<minecraft:noteblock>, <minecraft:stone_button>, null],[<plants2:log_0>, null, null], [null, null, null]]);
recipes.addShaped(<cfm:mail_box_dark_oak>, [[<plants2:log_0>, <minecraft:book>, <plants2:log_0>],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [null, <plants2:planks:2>, null]]);
recipes.addShaped(<cfm:bedside_cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>], [<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:blinds_dark_oak_open> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>], [<minecraft:stick>, <minecraft:stick>, <minecraft:stick>]]);
recipes.addShaped(<cfm:cabinet_dark_oak>, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, <minecraft:chest>, <plants2:planks:2>], [<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<cfm:upgraded_fence_dark_oak> * 8, [[<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>],[<minecraft:dark_oak_fence>, <plants2:log_0>, <minecraft:dark_oak_fence>], [<minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>, <minecraft:dark_oak_fence>]]);
recipes.addShaped(<cfm:park_bench_dark_oak> * 2, [[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<plants2:log_0>, null, <plants2:log_0>]]);
recipes.addShaped(<cfm:upgraded_gate_dark_oak> * 2, [[<minecraft:dark_oak_fence_gate>, <plants2:log_0>, null],[null, null, null], [null, null, null]]);

// storage drawers stuff
// use this to build a framing table and then just build framed drawers
recipes.addShaped(<storagedrawers:trim:5>, [[<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>],[<plants2:planks:2>, <plants2:planks:2>, <plants2:planks:2>], [<minecraft:stick>, <plants2:planks:2>, <minecraft:stick>]]);
