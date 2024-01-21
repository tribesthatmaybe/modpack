import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// weapon parts
recipes.addShaped(<cgm:scope>, [[null, null, null],
                               [null, <immersiveengineering:toolupgrade:8>, null],
                               [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:1>, [[null, null, null],
                                 [<immersiveengineering:material:8>, <immersiveengineering:toolupgrade:8>, <minecraft:glass>],
                                 [null, <immersiveengineering:material:9>, null]]);
recipes.addShaped(<cgm:scope:2>, [[null, null, null],
                                 [<alchemistry:ingot:88>, <immersiveengineering:toolupgrade:8>, <tconstruct:seared_glass>],
                                 [null, <immersiveengineering:material:9>, null]]);

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
recipes.remove(<cyclicmagic:boomerang>);
recipes.addShaped(<cyclicmagic:boomerang>, [[null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null],
					    [<tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), <realistictorches:glowstone_paste>, <tconstruct:binding>.withTag({Material: "silver"})],
					    [null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null]]);
recipes.remove(<extrautils2:boomerang>);
recipes.addShaped(<extrautils2:boomerang>, [[null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null],
					    [<tconstruct:binding>.withTag({Material: "silver"}), <realistictorches:glowstone_paste>, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"})],
					    [null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null]]);
recipes.remove(<cyclicmagic:slingshot_weapon>);
recipes.addShaped(<cyclicmagic:slingshot_weapon>, [[null, <tconstruct:binding>.withTag({Material: "stone"}), <tconstruct:bow_string>.withTag({Material: "string"})],
						   [null, <tconstruct:tool_rod>.withTag({Material: "wood"}), <tconstruct:binding>.withTag({Material: "stone"})],
						   [<tconstruct:tool_rod>.withTag({Material: "wood"}), null, null]]);

//// booms
// efln
recipes.addShaped(<tconstruct:throwball:1> * 4, [
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>],
                                           [<immersiveengineering:material:2>, <immersiveengineering:wooden_device0:4>, <immersiveengineering:material:2>],
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>]]);
recipes.removeShapeless(<tconstruct:throwball:1>);
recipes.removeShapeless(<tconstruct:throwball:1>);
// dy-no-mite
recipes.remove(<cyclicmagic:ender_tnt_1>);
recipes.addShaped(<cyclicmagic:ender_tnt_1> * 6, [[<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:gunpowder>, <tconstruct:binding>.withTag({Material: "wood"})],
					      	  [<minecraft:clay_ball>, <immersiveengineering:wooden_device0:4>, <minecraft:clay_ball>],
					      	  [<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:gunpowder>, <tconstruct:binding>.withTag({Material: "wood"})]]);
recipes.remove(<cyclicmagic:ender_tnt_2>);
recipes.addShapeless(<cyclicmagic:ender_tnt_2>, [<cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_3>);
recipes.addShapeless(<cyclicmagic:ender_tnt_3>, [<cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_3>, [<cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_4>);
recipes.addShapeless(<cyclicmagic:ender_tnt_4>, [<cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_4>, [<cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_5>);
recipes.addShapeless(<cyclicmagic:ender_tnt_5>, [<cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_5>, [<cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_6>);
recipes.addShapeless(<cyclicmagic:ender_tnt_6>, [<cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_6>, [<cyclicmagic:ender_tnt_5>, <cyclicmagic:ender_tnt_5>, <minecraft:clay_ball>]);
