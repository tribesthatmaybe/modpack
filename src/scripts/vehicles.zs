import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// we try to enforce the use/gating of the "vehicle hammer"

// one of the tweaks we do removes the openblocks hang glider so this is actually the only recipe
recipes.addShaped(<openblocks:hang_glider>, [[null, <immersiveengineering:material:1>, null],[<immersiveengineering:material:5>,
                                            <immersiveengineering:material:1>, <immersiveengineering:material:5>],
                                            [<immersiveengineering:material:5>, <vehicle:hammer>.reuse(), <immersiveengineering:material:5>]]);


//// animal bikes!
recipes.remove(<animalbikes:spiderbike>);
recipes.remove(<animalbikes:creeperbike>);
recipes.remove(<animalbikes:ponybike>);
recipes.remove(<animalbikes:reindeerbike>);
recipes.remove(<animalbikes:irongolembike>);
recipes.remove(<animalbikes:dinobike>);
recipes.remove(<animalbikes:chocobobike>);
recipes.remove(<animalbikes:flowerbike>);
recipes.remove(<animalbikes:polarbearbike>);

//this one doesn't get removed by config for some reason
mods.jei.JEI.removeAndHide(<animalbikes:chinesedragonbike>);

recipes.addShaped(<animalbikes:spiderbike>, [[<minecraft:spider_eye>, <minecraft:saddle>, <minecraft:spider_eye>],
                                            [<minecraft:spider_eye>, <mysticalagriculture:storage>, <minecraft:spider_eye>],
                                            [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:creeperbike>, [[<minecraft:tnt>, <minecraft:saddle>, <minecraft:tnt>],
                                             [<minecraft:tnt>, <mysticalagriculture:storage>, <minecraft:tnt>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:ponybike>, [[<minecraft:diamond>, <minecraft:saddle>, <minecraft:diamond>],
                                          [<minecraft:diamond>, <mysticalagriculture:storage>, <minecraft:diamond>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:reindeerbike>, [[<minecraft:sapling:1>, <minecraft:saddle>, <minecraft:sapling:1>],
                                              [<minecraft:sapling:1>, <mysticalagriculture:storage>, <minecraft:sapling:1>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:irongolembike>, [[<minecraft:vine>, <minecraft:saddle>, <ore:plant>],
                                               [<minecraft:iron_block>, <mysticalagriculture:storage>, <minecraft:iron_block>],
                                               [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.remove(<animalbikes:fossil>);
recipes.addShaped(<animalbikes:dinobike>, [[<fossil:biofossil>, <minecraft:saddle>, <fossil:biofossil>],
                                          [<fossil:biofossil>, <mysticalagriculture:storage>, <fossil:biofossil>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:chocobobike>, [[<minecraft:golden_carrot>, <minecraft:saddle>,<minecraft:golden_carrot>],
                                             [<minecraft:golden_carrot>, <mysticalagriculture:storage>, <minecraft:golden_carrot>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:flowerbike>, [[<ore:plant>, <minecraft:saddle>, <ore:plant>],
                                            [<ore:plant>, <mysticalagriculture:storage>, <ore:plant>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:polarbearbike>, [[<minecraft:fish:1>, <minecraft:saddle>, <minecraft:fish:1>],
                                               [<minecraft:fish:1>, <mysticalagriculture:storage>, <minecraft:fish:1>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);

//// crayfish vehicles
// not using these things. will distill fuelium via immersive petroleum or something.
mods.jei.JEI.hide(<liquid:ender_sap>);
mods.jei.JEI.hide(<liquid:blaze_juice>);
mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: "ender_sap"}));
mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: "blaze_juice"}));
mods.jei.JEI.removeAndHide(<vehicle:fluid_extractor>);
mods.jei.JEI.removeAndHide(<vehicle:fluid_mixer>);
// distilling fuelium from gasoline - chance of nitrogen, carbon, methane
mods.immersivepetroleum.Distillation.addRecipe(
	[<liquid:fuelium> * 5],
	[<alchemistry:element:7>, <alchemistry:element:6>, <alchemistry:compound:34>],
	<liquid:gasoline>,
	50,
	25,
	[0.05, 0.05, 0.15]);
	
mods.immersivepetroleum.Motorboat.registerMotorboatFuel(<liquid:fuelium>, 5);

// workbench and wrench
recipes.remove(<vehicle:workstation>);
recipes.addShaped(<vehicle:workstation>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
					  [<storagedrawers:customdrawers:4>, <minecraft:concrete:14>, <actuallyadditions:block_misc:9>],
					  [<minecraft:concrete:14>, <vehicle:hammer>.reuse(), <minecraft:concrete:14>]]);
recipes.remove(<vehicle:wrench>);
recipes.addShaped(<vehicle:wrench>, [[<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
				     [null, <tconstruct:binding>.withTag({Material: "iron"}), null],
				     [<vehicle:hammer>.reuse(), <immersiveengineering:metal:39>, null]]);
// fluid pipe and pump
recipes.remove(<vehicle:fluid_pipe>);
recipes.addShaped(<vehicle:fluid_pipe> * 4, [[null, null, null],
					     [<mekanism:ingot:1>, <mekanism:transmitter:1>, <mekanism:ingot:1>],
					     [null, null, null]]);
recipes.remove(<vehicle:fluid_pump>);
recipes.addShaped(<vehicle:fluid_pump>, [[null, <immersiveengineering:material:8>, null],
					 [null, <mekanism:transmitter:1>, <tconstruct:large_plate>.withTag({Material: "iron"})],
					 [null, <immersiveengineering:material:8>, null]]);
// fill er' up
recipes.remove(<vehicle:gas_pump>);
recipes.addShaped(<vehicle:gas_pump>, [[<immersiveengineering:metal:39>, <tconstruct:clear_glass>, <immersiveengineering:metal:39>],
				       [<minecraft:concrete:14>, <mekanism:machineblock2:11>, <minecraft:concrete:14>],
				       [<vehicle:wrench>.reuse(), <actuallyadditions:block_misc:9>, <minecraft:concrete:14>]]);
recipes.remove(<vehicle:industrial_jerry_can>);
recipes.addShaped(<vehicle:industrial_jerry_can>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <tconstruct:faucet>],
						   [<immersiveengineering:metal:39>, <vehicle:wrench>.reuse(), <immersiveengineering:metal:39>],
						   [<immersiveengineering:metal:39>, <mekanism:machineblock2:11>, <immersiveengineering:metal:39>]]);
recipes.remove(<vehicle:jerry_can>);
recipes.addShaped(<vehicle:jerry_can>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <tconstruct:faucet>],
				        [<immersiveengineering:metal:39>, <vehicle:wrench>.reuse(), <immersiveengineering:metal:39>],
					[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>]]);

recipes.remove(<vehicle:jack>);
recipes.addShaped(<vehicle:jack>, [[<immersiveengineering:metal:39>, <minecraft:piston>, <immersiveengineering:metal:39>],
				   [<minecraft:concrete:14>, <vehicle:electric_engine:2>, <minecraft:concrete:14>],
				   [<vehicle:wrench>, <actuallyadditions:block_misc:9>, <minecraft:concrete:14>]]);
// a key
recipes.remove(<vehicle:key>);
recipes.addShaped(<vehicle:key>, [[null, null, null],
				  [<mekanism:polyethene:2>, <tconstruct:tool_rod>.withTag({Material: "iron"}), null],
				  [null, null, null]]);
// zooooom
recipes.remove(<vehicle:steep_boost_ramp>);
recipes.addShaped(<vehicle:steep_boost_ramp> * 3, [[<vehicle:boost_pad>, null, null],
					           [<tconstruct:large_plate>.withTag({Material: "electrum"}), <vehicle:boost_pad>, null],
						   [<tconstruct:large_plate>.withTag({Material: "iron"}), <tconstruct:large_plate>.withTag({Material: "electrum"}), <vehicle:boost_pad>]]);
recipes.remove(<vehicle:boost_ramp>);
recipes.addShaped(<vehicle:boost_ramp> * 2, [[null, null, null],
				       	     [<vehicle:boost_ramp>, null, null],
					     [<tconstruct:large_plate>.withTag({Material: "electrum"}), <vehicle:boost_ramp>, null]]);
recipes.remove(<vehicle:boost_pad>);
recipes.addShaped(<vehicle:boost_pad>, [[<tconstruct:large_plate>.withTag({Material: "electrum"}), <botania:blazeblock>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
				        [<botania:blazeblock>, <vehicle:wrench>.reuse(), <botania:blazeblock>],
					[<tconstruct:large_plate>.withTag({Material: "iron"}), <tconstruct:large_plate>.withTag({Material: "electrum"}), <tconstruct:large_plate>.withTag({Material: "iron"})]]);

// panel a more in line with what we want
recipes.remove(<vehicle:panel>);
recipes.addShaped(<vehicle:panel> * 8, [[<mekanism:polyethene:2>, <immersiveengineering:metal:30>, <mekanism:polyethene:2>],
				        [<immersiveengineering:metal:39>, <mekanism:enrichedalloy>, <immersiveengineering:metal:39>],
				        [<mekanism:polyethene:2>, <immersiveengineering:metal:30>, <mekanism:polyethene:2>]]);
// so many parts.
// normal wheel
recipes.remove(<vehicle:wheel>);
recipes.addShaped(<vehicle:wheel>, [[<tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})],
				    [<actuallyadditions:item_misc:5>, <tconstruct:pan_head>.withTag({Material: "iron"}), <actuallyadditions:item_misc:5>],
				    [<vehicle:hammer>.reuse(), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})]]);
// sports wheel
recipes.remove(<vehicle:wheel:1>);
recipes.addShaped(<vehicle:wheel:1>, [[<tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})],
				    [<actuallyadditions:item_misc:5>, <tconstruct:pan_head>.withTag({Material: "silver"}), <actuallyadditions:item_misc:5>],
				    [<vehicle:hammer>.reuse(), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})]]);

// racing wheel
recipes.remove(<vehicle:wheel:2>);
recipes.addShaped(<vehicle:wheel:2>, [[<tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})],
				    [<actuallyadditions:item_misc:5>, <tconstruct:pan_head>.withTag({Material: "electrum"}), <actuallyadditions:item_misc:5>],
				    [<vehicle:hammer>.reuse(), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})]]);
// off road
recipes.remove(<vehicle:wheel:3>);
recipes.addShaped(<vehicle:wheel:3>, [[<tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})],
				    [<tconstruct:large_plate>.withTag({Material: "cactus"}), <tconstruct:pan_head>.withTag({Material: "iron"}), <tconstruct:large_plate>.withTag({Material: "cactus"})],
				    [<vehicle:hammer>.reuse(), <actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"})]]);
// snow
recipes.remove(<vehicle:wheel:4>);
recipes.addShaped(<vehicle:wheel:4>, [[<tconstruct:binding>.withTag({Material: "tar_slime"}), <tconstruct:large_plate>.withTag({Material: "cactus"}), <tconstruct:binding>.withTag({Material: "tar_slime"})],
				    [<actuallyadditions:item_misc:5>, <tconstruct:pan_head>.withTag({Material: "iron"}), <actuallyadditions:item_misc:5>],
				    [<vehicle:hammer>.reuse(), <tconstruct:large_plate>.withTag({Material: "cactus"}), <tconstruct:binding>.withTag({Material: "tar_slime"})]]);

// all terrain
recipes.remove(<vehicle:wheel:5>);
recipes.addShaped(<vehicle:wheel:5>, [[<actuallyadditions:item_misc:5>, <tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>],
				      [<tconstruct:binding>.withTag({Material: "tar_slime"}), <tconstruct:pan_head>.withTag({Material: "manasteel"}), <tconstruct:binding>.withTag({Material: "tar_slime"})],
				      [<vehicle:hammer>.reuse(), <tconstruct:binding>.withTag({Material: "tar_slime"}), <actuallyadditions:item_misc:5>]]);
// plastic
recipes.remove(<vehicle:wheel:6>);
recipes.addShaped(<vehicle:wheel:6>, [[<mekanism:polyethene:2>, <actuallyadditions:item_misc:5>, <mekanism:polyethene:2>],
				      [<actuallyadditions:item_misc:5>, <tconstruct:pan_head>.withTag({Material: "iron"}), <actuallyadditions:item_misc:5>],
				      [<vehicle:hammer>.reuse(), <actuallyadditions:item_misc:5>, <mekanism:polyethene:2>]]);
// sm wood engine
recipes.remove(<vehicle:small_engine>);
recipes.addShaped(<vehicle:small_engine>, [[null, <tconstruct:tough_binding>.withTag({Material:"iron"}), null],
					   [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					   [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm stone engine
recipes.remove(<vehicle:small_engine:1>);
recipes.addShaped(<vehicle:small_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material:"bronze"}), null],
					     [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm iron engine
recipes.remove(<vehicle:small_engine:2>);
recipes.addShaped(<vehicle:small_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material:"bronze"}), null],
					     [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm gold engine
recipes.remove(<vehicle:small_engine:3>);
recipes.addShaped(<vehicle:small_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material:"steel"}), null],
					     [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>,  <immersiveengineering:metal:40>]]);
// sm diamond engine
recipes.remove(<vehicle:small_engine:4>);
recipes.addShaped(<vehicle:small_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material:"steel"}), null],
					     [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>,  <immersiveengineering:metal:40>]]);
// lg wood engine
recipes.remove(<vehicle:large_engine>);
recipes.addShaped(<vehicle:large_engine>, [[null, <tconstruct:tough_binding>.withTag({Material: "iron"}), null],
					   [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					   [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg stone engine
recipes.remove(<vehicle:large_engine:1>);
recipes.addShaped(<vehicle:large_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					     [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg iron engine
recipes.remove(<vehicle:large_engine:2>);
recipes.addShaped(<vehicle:large_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					     [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg gold engine
recipes.remove(<vehicle:large_engine:3>);
recipes.addShaped(<vehicle:large_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					     [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal:40>]]);
// lg diamond engine
recipes.remove(<vehicle:large_engine:4>);
recipes.addShaped(<vehicle:large_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					     [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal:40>]]);
// electric wood engine
recipes.remove(<vehicle:electric_engine>);
recipes.addShaped(<vehicle:electric_engine>, [[null, <tconstruct:tough_binding>.withTag({Material: "iron"}), null],
					      [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric stone engine
recipes.remove(<vehicle:electric_engine:1>);
recipes.addShaped(<vehicle:electric_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					      [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric iron engine
recipes.remove(<vehicle:electric_engine:2>);
recipes.addShaped(<vehicle:electric_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					      [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric gold engine
recipes.remove(<vehicle:electric_engine:3>);
recipes.addShaped(<vehicle:electric_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					      [<actuallyadditions:item_misc:7>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric diamond engine
recipes.remove(<vehicle:electric_engine:4>);
recipes.addShaped(<vehicle:electric_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					      [<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);

//// airshipssss
recipes.remove(<vc:item_airship_balloon>);
recipes.addShaped(<vc:item_airship_balloon>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:polyethene:2>, <vc:upgrades/item_upgrade_airship_balloon>],
					      [<mekanism:polyethene:2>, <tconstruct:binding>.withTag({Material: "livingwood"}), <mekanism:polyethene:2>],
					      [<vc:upgrades/item_upgrade_airship_balloon>, <vehicle:wrench>.reuse(), <vc:upgrades/item_upgrade_airship_balloon>]]);
scripts.shared.recipeRemapShaped(<vc:item_airship_ignition>, [[<vc:upgrades/item_upgrade_airship_core>, <vc:upgrades/item_upgrade_airship_core>, <vc:upgrades/item_upgrade_airship_core>],
					       [<immersiveengineering:metal_decoration0:3>, <vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>],
					       [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:wrench>.reuse(), <tconstruct:large_plate>.withTag({Material: "livingwood"})]]);
recipes.remove(<vc:item_airship_engine>);
recipes.addShaped(<vc:item_airship_engine>, [[<immersiveengineering:metal_decoration0:4>, <tconstruct:seared_tank>, <immersiveengineering:metal_decoration0:4>],
					     [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:large_engine:2>, <tconstruct:large_plate>.withTag({Material: "livingwood"})],
					     [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:wrench>, <tconstruct:large_plate>.withTag({Material: "livingwood"})]]);
recipes.remove(<vc:item_airship_frame>);
recipes.addShaped(<vc:item_airship_frame>, [[<tconstruct:large_plate>.withTag({Material: "livingwood"}), <mekanism:controlcircuit>, <tconstruct:large_plate>.withTag({Material: "livingwood"})],
					    [<mysticalagriculture:crafting:34>, <mekanism:basicblock:8>, <mysticalagriculture:crafting:34>],
					    [<alchemistry:ingot:74>, <vehicle:wrench>, <alchemistry:ingot:74>]]);
// tools
recipes.remove(<vc:item_dismounter_normal>);
recipes.addShaped(<vc:item_dismounter_normal>, [[null, null, <mysticalagriculture:crafting:24>],
					        [null, <tconstruct:binding>.withTag({Material: "wood"}), null],
						[<tconstruct:tough_tool_rod>.withTag({Material: "wood"}), null, null]]);
recipes.remove(<vc:item_dismounter_player>);
recipes.addShaped(<vc:item_dismounter_player>, [[null, <mysticalagriculture:crafting:24>, <mysticalagriculture:crafting:24>],
					        [null, <tconstruct:binding>.withTag({Material: "treatedwood"}), <mysticalagriculture:crafting:24>],
						[<tconstruct:tough_tool_rod>.withTag({Material: "treatedwood"}), null, null]]);
// upgrade base's
recipes.remove(<vc:upgrades/item_upgrade_airship_core>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core> * 6, [[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>],
							        [<mekanism:controlcircuit>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <mekanism:controlcircuit>],
								[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame> * 6, [[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>],
							         [<mekanism:controlcircuit>, <actuallyadditions:item_color_lens>, <mekanism:controlcircuit>],
								 [<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_engine>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_engine> * 6, [[null, <tconstruct:large_plate>.withTag({Material: "steel"}), null],
							          [<mekanism:controlcircuit>, <immersiveengineering:metal_device1:2>, <mekanism:controlcircuit>],
								  [<mekanism:polyethene:2>, <tconstruct:large_plate>.withTag({Material: "steel"}), <mekanism:polyethene:2>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon> * 6, [[<minecraft:leather>, <mysticalagriculture:crafting:24>, <minecraft:leather>],
							           [<mekanism:controlcircuit>, <botania:rune:3>, <mekanism:controlcircuit>],
								   [<minecraft:leather>, <mysticalagriculture:crafting:24>, <minecraft:leather>]]);
recipes.remove(<vc:modules/item_module_type>);
recipes.addShaped(<vc:modules/item_module_type> * 4, [[null, <railcraft:plate:6>, null],
						      [<opencomputers:material:6>, <mekanism:controlcircuit>, <opencomputers:material:6>],
						      [null, <tconstruct:large_plate>.withTag({Material: "manasteel"}), null]]);
// dat airship tho
recipes.remove(<vc:airships/item_airship>);
recipes.addShaped(<vc:airships/item_airship>, [[<immersiveengineering:wirecoil:4>, <vc:item_airship_balloon>, <immersiveengineering:wirecoil:4>],
					       [<vc:item_airship_engine>, <vc:item_airship_frame>, <vc:item_airship_engine>],
					       [<mekanism:polyethene:2>, <vc:item_airship_ignition>, <mekanism:polyethene:2>]]);
// core upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_core:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:1>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>],
 							      [<immersiveengineering:metal:30>, <storagedrawers:upgrade_template>, <immersiveengineering:metal:30>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:2>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>],
							      [<immersiveengineering:metal:40>, <storagedrawers:upgrade_template>, <immersiveengineering:metal:40>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:3>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal:2>, <storagedrawers:upgrade_storage>, <actuallyadditions:item_crystal:2>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:4>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal:2>, <storagedrawers:upgrade_storage:1>, <actuallyadditions:item_crystal:2>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:5>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit:2>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal_empowered:4>, <storagedrawers:upgrade_template>, <actuallyadditions:item_crystal_empowered:4>],
							      [<vc:upgrades/item_upgrade_airship_core>, <storagedrawers:upgrade_storage:2>, <vc:upgrades/item_upgrade_airship_core>]]);
// frame upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:1>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:39>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:2>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<immersiveengineering:metal:40>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:40>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:3>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal:2>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:2>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:4>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal:2>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:2>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:5>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:2>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal_empowered:4>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal_empowered:4>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:2>, <vc:upgrades/item_upgrade_airship_frame>]]);

// balloon upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:1>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:enrichedalloy>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<immersiveengineering:metal:39>, <immersiveengineering:cloth_device:1>, <immersiveengineering:metal:39>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <botania:manaresource>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:2>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:enrichedalloy>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<immersiveengineering:metal:40>, <immersiveengineering:cloth_device:1>, <immersiveengineering:metal:40>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <botania:manaresource>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:3>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:reinforcedalloy>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<actuallyadditions:item_crystal:2>, <immersiveengineering:cloth_device:1>, <actuallyadditions:item_crystal:2>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <botania:manaresource>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:4>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:reinforcedalloy>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<actuallyadditions:item_crystal:2>, <mekanism:reinforcedplasticblock:*>, <actuallyadditions:item_crystal:2>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <botania:manaresource>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:5>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_frame>],
							         [<actuallyadditions:item_crystal_empowered:4>, <mekanism:reinforcedplasticblock:*>, <actuallyadditions:item_crystal_empowered:4>],
							         [<vc:upgrades/item_upgrade_airship_frame>, <botania:manaresource>, <vc:upgrades/item_upgrade_airship_frame>]]);
// engine upgrades
scripts.shared.recipeRemapShaped(<vc:upgrades/item_upgrade_airship_engine:4>, [[<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:8>, <vc:upgrades/item_upgrade_airship_engine>],
									       [<mekanism:enrichedalloy>, <vehicle:large_engine:3>, <mekanism:enrichedalloy>],
									       [<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:8>, <vc:upgrades/item_upgrade_airship_engine>]]);
scripts.shared.recipeRemapShaped(<vc:upgrades/item_upgrade_airship_engine:4>, [[<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:8>, <vc:upgrades/item_upgrade_airship_engine>],
									       [<railcraft:gear:5>, <vehicle:large_engine:3>, <railcraft:gear:5>],
									       [<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:8>, <vc:upgrades/item_upgrade_airship_engine>]]);
scripts.shared.recipeRemapShaped(<vc:upgrades/item_upgrade_airship_engine:3>, [[<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>],
									       [<railcraft:gear:5>, <vehicle:large_engine:3>, <railcraft:gear:5>],
									       [<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>]]);
scripts.shared.recipeRemapShaped(<vc:upgrades/item_upgrade_airship_engine:2>, [[<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>],
									       [<railcraft:gear:4>, <vehicle:large_engine:3>, <railcraft:gear:4>],
									       [<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>]]);
scripts.shared.recipeRemapShaped(<vc:upgrades/item_upgrade_airship_engine:1>, [[<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>],
									       [<railcraft:gear:2>, <vehicle:large_engine:3>, <railcraft:gear:2>],
									       [<vc:upgrades/item_upgrade_airship_engine>, <actuallyadditions:item_misc:7>, <vc:upgrades/item_upgrade_airship_engine>]]);
// bombbbbb
scripts.shared.recipeRemapShaped(<vc:item_bomb>, [[<mekanism:plasticblock>, <extrautils2:ingredients:17>, <mekanism:plasticblock>],
						  [<immersiveengineering:metal:39>, <appliedenergistics2:material:22>, <immersiveengineering:metal:39>],
						  [<mekanism:plasticblock>, <extrautils2:ingredients:17>, <mekanism:plasticblock>]]);
// small bomb
scripts.shared.recipeRemapShaped(<vc:item_bomb:1>, [[<vc:item_bomb>, <projectred-core:resource_item:105>, <vc:item_bomb>],
						    [<botania:manaresource:16>, <cyclicmagic:ender_tnt_4>, <botania:manaresource:16>],
						    [<vc:item_bomb>, <projectred-core:resource_item:105>, <vc:item_bomb>]]);
// big bomb
scripts.shared.recipeRemapShaped(<vc:item_bomb:2>, [[<vc:item_bomb>, <projectred-core:resource_item:103>, <vc:item_bomb>],
						    [<cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>],
						    [<vc:item_bomb>, <immersiveengineering:metal:38>, <vc:item_bomb>]]);
// scatter bomb
scripts.shared.recipeRemapShaped(<vc:item_bomb:3>, [[<vc:item_bomb>, <tconstruct:tough_binding>.withTag({Material: "iron"}), <vc:item_bomb>],
						    [<cyclicmagic:ender_tnt_6>, <tconstruct:tough_binding>.withTag({Material: "iron"}), <cyclicmagic:ender_tnt_6>],
						    [<vc:item_bomb>, <tconstruct:tough_binding>.withTag({Material: "iron"}), <vc:item_bomb>]]);
// fuel
mods.mekanism.infuser.addRecipe("REDSTONE", 100, <minecraft:coal>, <vc:item_viesoline_pellets>);
mods.mekanism.infuser.addRecipe("REDSTONE", 100, <minecraft:coal:1>, <vc:item_viesoline_pellets>);
mods.mekanism.infuser.addRecipe("REDSTONE", 100, <immersiveengineering:material:6>, <vc:item_viesoline_pellets> * 3);
mods.mekanism.infuser.addRecipe("REDSTONE", 50, <mysticalagriculture:coal>, <vc:item_viesoline_pellets> * 3);
mods.mekanism.infuser.addRecipe("REDSTONE", 50, <mysticalagriculture:coal:1>, <vc:item_viesoline_pellets> * 5);
mods.mekanism.infuser.addRecipe("REDSTONE", 40, <mysticalagriculture:coal:2>, <vc:item_viesoline_pellets> * 7);
mods.mekanism.infuser.addRecipe("REDSTONE", 30, <mysticalagriculture:coal:3>, <vc:item_viesoline_pellets> * 9);
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <mysticalagriculture:coal:4>, <vc:item_viesoline_pellets> * 10);

// altitude mods
recipes.remove(<vc:modules/item_module_type:1>);
recipes.addShaped(<vc:modules/item_module_type:1>, [[null, null, null],
						    [<mysticalagriculture:crafting:24>, <botania:rune:3>, <mysticalagriculture:crafting:24>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:2>);
recipes.addShaped(<vc:modules/item_module_type:2>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:4>, <mekanism:gastank>, <immersiveengineering:metal_decoration0:4>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:3>);
recipes.addShaped(<vc:modules/item_module_type:3>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:5>, <mekanism:gastank>, <immersiveengineering:metal_decoration0:5>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// speed mods
recipes.remove(<vc:modules/item_module_type:4>);
recipes.addShaped(<vc:modules/item_module_type:4>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:4>, <vehicle:electric_engine:1>, <immersiveengineering:metal_decoration0:4>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:5>);
recipes.addShaped(<vc:modules/item_module_type:5>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:4>, <vehicle:electric_engine:4>, <immersiveengineering:metal_decoration0:4>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:6>);
recipes.addShaped(<vc:modules/item_module_type:6>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:5>, <vehicle:electric_engine:4>, <immersiveengineering:metal_decoration0:5>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// storage mods
recipes.remove(<vc:modules/item_module_type:7>);
recipes.addShaped(<vc:modules/item_module_type:7>, [[null, null, null],
						    [<immersiveengineering:metal_decoration0:4>, <appliedenergistics2:material:35>, <immersiveengineering:metal_decoration0:4>],
						    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:8>);
recipes.addShaped(<vc:modules/item_module_type:8>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <appliedenergistics2:material:35>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:9>);
recipes.addShaped(<vc:modules/item_module_type:9>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:5>, <appliedenergistics2:material:35>, <immersiveengineering:metal_decoration0:5>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// efficiency mods
recipes.remove(<vc:modules/item_module_type:10>);
recipes.addShaped(<vc:modules/item_module_type:10>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <botania:rune:11>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:11>);
recipes.addShaped(<vc:modules/item_module_type:11>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <botania:rune:11>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:12>);
recipes.addShaped(<vc:modules/item_module_type:12>, [[<quark:rune:10>, <quark:rune>, <quark:rune:10>],
						     [<immersiveengineering:metal_decoration0:5>, <quark:rune:10>, <immersiveengineering:metal_decoration0:5>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// music mods
scripts.shared.recipeRemapShaped(<vc:modules/item_module_type:13>, [[null, null, null],
								    [<immersiveengineering:metal_decoration0:3>, <tconstruct:tough_binding>.withTag({Material: "copper"}), <immersiveengineering:metal_decoration0:3>],
								    [<vc:modules/item_module_type>, <betterrecords:recordplayer>, <vc:modules/item_module_type>]]);
scripts.shared.recipeRemapShaped(<vc:modules/item_module_type:14>, [[null, null, null],
								    [null, <appliedenergistics2:material:35>, null],
								    [<vc:modules/item_module_type>, <betterrecords:record>, <vc:modules/item_module_type>]]);
scripts.shared.recipeRemapShaped(<vc:modules/item_module_type:15>, [[null, null, null],
								    [<appliedenergistics2:material:35>, <mekanism:plasticblock:1>, <appliedenergistics2:material:35>],
								    [<vc:modules/item_module_type>, <betterrecords:record>, <vc:modules/item_module_type>]]);
// cruise control mod
recipes.remove(<vc:modules/item_module_type:16>);
recipes.addShaped(<vc:modules/item_module_type:16>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <opencomputers:component>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:17>);
recipes.addShaped(<vc:modules/item_module_type:17>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <opencomputers:component>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
scripts.shared.recipeRemapShaped(<vc:modules/item_module_type:18>, [[null, null, null],
								    [<immersiveengineering:metal_decoration0:4>, <opencomputers:component:1>, <immersiveengineering:metal_decoration0:4>],
								    [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);

// water landing mod
recipes.remove(<vc:modules/item_module_type:19>);
recipes.addShaped(<vc:modules/item_module_type:19>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <immersivepetroleum:speedboat>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:20>);
recipes.addShaped(<vc:modules/item_module_type:20>, [[<mekanism:plasticblock:*>, null, <mekanism:plasticblock:*>],
						     [<immersiveengineering:metal_decoration0:4>, <mekanism:plasticblock:*>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:21>);
recipes.addShaped(<vc:modules/item_module_type:21>, [[<mekanism:plasticblock:*>, null, <mekanism:plasticblock:*>],
						     [<immersiveengineering:metal_decoration0:5>, <mekanism:plasticblock:*>, <immersiveengineering:metal_decoration0:5>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// no fly without fuel mods
mods.jei.JEI.removeAndHide(<vc:modules/item_module_type:22>);
mods.jei.JEI.removeAndHide(<vc:modules/item_module_type:23>);
mods.jei.JEI.removeAndHide(<vc:modules/item_module_type:24>);
// bombing mod
recipes.remove(<vc:modules/item_module_type:25>);
recipes.addShaped(<vc:modules/item_module_type:25>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <appliedenergistics2:sky_compass>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:26>);
recipes.addShaped(<vc:modules/item_module_type:26>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <cgm:scope>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:27>);
recipes.addShaped(<vc:modules/item_module_type:27>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:5>, <cgm:scope:1>, <immersiveengineering:metal_decoration0:5>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);

//// cones and things
// these items seem bugged?
mods.jei.JEI.removeAndHide(<trafficcontrol:shunt_border>);
mods.jei.JEI.removeAndHide(<trafficcontrol:shunt_island>);
// this seems like a dupe?
mods.jei.JEI.removeAndHide(<trafficcontrol:type_3_barrier_right>);
// use plastic for plastic things
recipes.remove(<trafficcontrol:cone>);
recipes.addShaped(<trafficcontrol:cone> * 5, [[null, <mekanism:plasticblock:15>, null],
					      [null, <mekanism:plasticblock:14>, null],
					      [<mekanism:plasticblock:14>, <mekanism:plasticblock:15>, <mekanism:plasticblock:14>]]);
recipes.remove(<trafficcontrol:channelizer>);
recipes.addShaped(<trafficcontrol:channelizer> * 3, [[null, <mekanism:plasticblock:15>, null],
					             [null, <mekanism:plasticblock:14>, null],
						     [null, <mekanism:plasticblock>, null]]);
recipes.remove(<trafficcontrol:drum>);
recipes.addShaped(<trafficcontrol:drum> * 6, [[null, null, null],
					  [<mekanism:plasticblock:14>, <mekanism:plasticblock:15>, <mekanism:plasticblock:14>],
					  [<mekanism:plasticblock:15>, <mekanism:plasticblock:14>, <mekanism:plasticblock:15>]]);
recipes.remove(<trafficcontrol:street_sign>);
recipes.addShaped(<trafficcontrol:street_sign>, [[null, null, null],
						 [null, <minecraft:sign>, null],
						 [null, <immersiveengineering:metal:31>, null]]);
recipes.remove(<trafficcontrol:sign>);
recipes.addShaped(<trafficcontrol:sign>, [[null, null, null],
					  [null, <minecraft:painting>, null],
					  [null, <immersiveengineering:metal:31>, null]]);
recipes.remove(<trafficcontrol:type_3_barrier>);
recipes.addShaped(<trafficcontrol:type_3_barrier> * 3, [[<immersiveengineering:material:1>, <mekanism:plasticblock:15>, <immersiveengineering:material:1>],
						        [<immersiveengineering:material:1>, <mekanism:plasticblock:14>, <immersiveengineering:material:1>],
							[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>]]);
recipes.remove(<trafficcontrol:crossing_gate_pole>);
recipes.addShapeless(<trafficcontrol:crossing_gate_pole>, [<immersiveposts:fence_iron>, <chiselsandbits:bitsaw_diamond>.reuse()]);
recipes.remove(<trafficcontrol:traffic_rail>);
recipes.addShaped(<trafficcontrol:traffic_rail>, [[null, null, null],
						  [<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>],
						  [null, <immersiveengineering:treated_wood>, null]]);
