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
recipes.addShaped(<animalbikes:dinobike>, [[<animalbikes:fossil>, <minecraft:saddle>, <animalbikes:fossil>],
                                          [<animalbikes:fossil>, <mysticalagriculture:storage>, <animalbikes:fossil>],
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
// distilling fuelium from gasoline - change of nitrogen, carbon, methane
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
					 [null, <mekanism:transmitter:1>, <tconstruct:large_plate>],
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
					     [<tconstruct:large_plate>, <vehicle:boost_ramp>.withTag({Material: "electrum"}), null]]);
recipes.remove(<vehicle:boost_pad>);
recipes.addShaped(<vehicle:boost_pad>, [[<tconstruct:large_plate>.withTag({Material: "electrum"}), <botania:blazeblock>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
				        [<botania:blazeblock>, <vehicle:wrench>.reuse(), <botania:blazeblock>],
					[<tconstruct:large_plate>.withTag({Material: "iron"}), <tconstruct:large_plate>.withTag({Material: "electrum"}), <tconstruct:large_plate>.withTag({Material: "iron"})]]);

// panel a more in line with what we want
recipes.remove(<vehicle:panel>);
//recipes.removeShaped(<vehicle:panel> * 8, [[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
//				      [<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
//				      [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);
recipes.addShaped(<vehicle:panel> * 8, [[<mekanism:polyethene:2>, <immersiveengineering:metal:30>, <mekanism:polyethene:2>],
				        [<immersiveengineering:metal:39>, <mekanism:polyethene:2>, <immersiveengineering:metal:39>],
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
					   [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					   [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm stone engine
recipes.remove(<vehicle:small_engine:1>);
recipes.addShaped(<vehicle:small_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material:"bronze"}), null],
					     [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm iron engine
recipes.remove(<vehicle:small_engine:2>);
recipes.addShaped(<vehicle:small_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material:"bronze"}), null],
					     [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>, <tconstruct:large_plate>.withTag({Material:"iron"})]]);
// sm gold engine
recipes.remove(<vehicle:small_engine:3>);
recipes.addShaped(<vehicle:small_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material:"steel"}), null],
					     [<mysticalagriculture:crafting:33>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>,  <immersiveengineering:metal:40>]]);
// sm diamond engine
recipes.remove(<vehicle:small_engine:4>);
recipes.addShaped(<vehicle:small_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material:"steel"}), null],
					     [<mysticalagriculture:crafting:34>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:4>,  <immersiveengineering:metal:40>]]);
// lg wood engine
recipes.remove(<vehicle:large_engine>);
recipes.addShaped(<vehicle:large_engine>, [[null, <tconstruct:tough_binding>.withTag({Material: "iron"}), null],
					   [<mysticalagriculture:storage>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					   [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg stone engine
recipes.remove(<vehicle:large_engine:1>);
recipes.addShaped(<vehicle:large_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					     [<mysticalagriculture:storage>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg iron engine
recipes.remove(<vehicle:large_engine:2>);
recipes.addShaped(<vehicle:large_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					     [<mysticalagriculture:storage>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// lg gold engine
recipes.remove(<vehicle:large_engine:3>);
recipes.addShaped(<vehicle:large_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					     [<mysticalagriculture:storage>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal:40>]]);
// lg diamond engine
recipes.remove(<vehicle:large_engine:4>);
recipes.addShaped(<vehicle:large_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					     [<mysticalagriculture:storage:1>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					     [<vehicle:wrench>.reuse(), <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal:40>]]);
// electric wood engine
recipes.remove(<vehicle:electric_engine>);
recipes.addShaped(<vehicle:electric_engine>, [[null, <tconstruct:tough_binding>.withTag({Material: "iron"}), null],
					      [<mekanism:enrichedalloy>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric stone engine
recipes.remove(<vehicle:electric_engine:1>);
recipes.addShaped(<vehicle:electric_engine:1>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					      [<mekanism:enrichedalloy>, <actuallyadditions:block_misc:4>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric iron engine
recipes.remove(<vehicle:electric_engine:2>);
recipes.addShaped(<vehicle:electric_engine:2>, [[null, <tconstruct:tough_binding>.withTag({Material: "bronze"}), null],
					      [<mekanism:enrichedalloy>, <actuallyadditions:block_misc:9>, <railcraft:gear:1>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric gold engine
recipes.remove(<vehicle:electric_engine:3>);
recipes.addShaped(<vehicle:electric_engine:3>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					      [<mekanism:enrichedalloy>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);
// electric diamond engine
recipes.remove(<vehicle:electric_engine:4>);
recipes.addShaped(<vehicle:electric_engine:4>, [[null, <tconstruct:tough_binding>.withTag({Material: "steel"}), null],
					      [<mekanism:reinforcedalloy>, <actuallyadditions:block_misc:9>, <railcraft:gear:2>],
					      [<vehicle:wrench>, <immersiveengineering:metal_decoration0:3>, <tconstruct:large_plate>.withTag({Material: "iron"})]]);

//// airshipssss
// parts. logic chip used in some other things.
recipes.remove(<vc:item_logic_chip>);
recipes.addShaped(<vc:item_logic_chip>, [[<railcraft:plate:2>, <immersiveengineering:metal_decoration0:3>, <railcraft:plate:2>],
					[<mysticalagriculture:crafting:24>, <opencomputers:material:6>, <mysticalagriculture:crafting:24>],
					[<actuallyadditions:item_crystal_empowered>, <opencomputers:material:2>, <actuallyadditions:item_crystal_empowered>]]);
recipes.remove(<vc:item_airship_balloon>);
recipes.addShaped(<vc:item_airship_balloon>, [[<minecraft:leather>, <mekanism:polyethene:2>, <minecraft:leather>],
					      [<mekanism:polyethene:2>, <tconstruct:binding>.withTag({Material: "livingwood"}), <mekanism:polyethene:2>],
					      [<minecraft:leather>, <vehicle:wrench>.reuse(), <minecraft:leather>]]);
recipes.remove(<vc:item_airship_ignition>);
recipes.addShaped(<vc:item_airship_ignition>, [[null, null, null],
					       [<immersiveengineering:metal_decoration0:3>, <actuallyadditions:block_misc:9>, <vc:item_logic_chip>],
					       [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:wrench>.reuse(), <tconstruct:large_plate>.withTag({Material: "livingwood"})]]);
recipes.remove(<vc:item_airship_engine>);
recipes.addShaped(<vc:item_airship_engine>, [[<immersiveengineering:metal_decoration0:4>, <tconstruct:seared_tank>, <immersiveengineering:metal_decoration0:4>],
					     [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:large_engine:2>, <tconstruct:large_plate>.withTag({Material: "livingwood"})],
					     [<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vehicle:wrench>, <tconstruct:large_plate>.withTag({Material: "livingwood"})]]);
recipes.remove(<vc:item_airship_frame>);
recipes.addShaped(<vc:item_airship_frame>, [[<tconstruct:large_plate>.withTag({Material: "livingwood"}), <vc:item_logic_chip>, <tconstruct:large_plate>.withTag({Material: "livingwood"})],
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
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core> * 4, [[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>],
							        [<vc:item_logic_chip>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <vc:item_logic_chip>],
								[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame> * 4, [[<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>],
							         [<vc:item_logic_chip>, <actuallyadditions:item_color_lens>, <vc:item_logic_chip>],
								 [<mekanism:enrichedalloy>, <tconstruct:large_plate>.withTag({Material: "iron"}), <mekanism:enrichedalloy>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_engine>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_engine> * 4, [[null, <tconstruct:large_plate>, null],
							          [<vc:item_logic_chip>, <immersiveengineering:metal_device1:2>, <vc:item_logic_chip>],
								  [<mekanism:polyethene:2>, <tconstruct:large_plate>, <mekanism:polyethene:2>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon> * 4, [[<minecraft:leather>, <mysticalagriculture:crafting:24>, <minecraft:leather>],
							           [<vc:item_logic_chip>, <botania:rune:3>, <vc:item_logic_chip>],
								   [<minecraft:leather>, <mysticalagriculture:crafting:24>, <minecraft:leather>]]);
recipes.remove(<vc:modules/item_module_type>);
recipes.addShaped(<vc:modules/item_module_type> * 4, [[null, <railcraft:plate:6>, null],
						      [<opencomputers:material:6>, <vc:item_logic_chip>, <opencomputers:material:6>],
						      [null, <tconstruct:large_plate>.withTag({Material: "manasteel"}), null]]);
// dat airship tho
recipes.remove(<vc:airships/item_airship>);
recipes.addShaped(<vc:airships/item_airship>, [[<immersiveengineering:wirecoil:4>, <vc:item_airship_balloon>, <immersiveengineering:wirecoil:4>],
					       [<vc:item_airship_engine>, <vc:item_airship_frame>, <vc:item_airship_engine>],
					       [<mekanism:polyethene:2>, <vc:item_airship_ignition>, <mekanism:polyethene:2>]]);
// core upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_core:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:1>, [[<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>],
 							      [<immersiveengineering:metal:30>, <storagedrawers:upgrade_template>, <immersiveengineering:metal:30>],
							      [<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:2>, [[<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>],
							      [<immersiveengineering:metal:40>, <storagedrawers:upgrade_template>, <immersiveengineering:metal:40>],
							      [<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:3>, [[<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal:2>, <storagedrawers:upgrade_template>, <actuallyadditions:item_crystal:2>],
							      [<vc:upgrades/item_upgrade_airship_core>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:4>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal:2>, <storagedrawers:upgrade_template>, <actuallyadditions:item_crystal:2>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_core>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_core:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_core:5>, [[<vc:upgrades/item_upgrade_airship_core>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_core>],
							      [<actuallyadditions:item_crystal_empowered:4>, <storagedrawers:upgrade_template>, <actuallyadditions:item_crystal_empowered:4>],
							      [<vc:upgrades/item_upgrade_airship_core>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_core>]]);
// frame upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:1>, [[<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<immersiveengineering:metal:39>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:39>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:2>, [[<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<immersiveengineering:metal:40>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal:40>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:3>, [[<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal:2>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:2>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:4>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal:2>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal:2>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_frame>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_frame:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_frame:5>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_frame>],
							       [<actuallyadditions:item_crystal_empowered:4>, <mekanism:basicblock:8>, <actuallyadditions:item_crystal_empowered:4>],
							       [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_frame>]]);

// balloon upgrades
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:1>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:1>, [[<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<immersiveengineering:metal:39>, <immersiveengineering:cloth_device:1>, <immersiveengineering:metal:39>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:2>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:2>, [[<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<immersiveengineering:metal:40>, <immersiveengineering:cloth_device:1>, <immersiveengineering:metal:40>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:3>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:3>, [[<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<actuallyadditions:item_crystal:2>, <immersiveengineering:cloth_device:1>, <actuallyadditions:item_crystal:2>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <vc:item_logic_chip>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:4>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:4>, [[<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_balloon>],
								 [<actuallyadditions:item_crystal:2>, <mekanism:reinforcedplasticblock:*>, <actuallyadditions:item_crystal:2>],
								 [<vc:upgrades/item_upgrade_airship_balloon>, <mekanism:controlcircuit:1>, <vc:upgrades/item_upgrade_airship_balloon>]]);
recipes.remove(<vc:upgrades/item_upgrade_airship_balloon:5>);
recipes.addShaped(<vc:upgrades/item_upgrade_airship_balloon:5>, [[<vc:upgrades/item_upgrade_airship_frame>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_frame>],
							         [<actuallyadditions:item_crystal_empowered:4>, <mekanism:reinforcedplasticblock:*>, <actuallyadditions:item_crystal_empowered:4>],
							         [<vc:upgrades/item_upgrade_airship_frame>, <mekanism:atomicalloy>, <vc:upgrades/item_upgrade_airship_frame>]]);
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
recipes.remove(<vc:modules/item_module_type:13>);
recipes.addShaped(<vc:modules/item_module_type:13>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <betterrecords:recordplayer>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:14>);
recipes.addShaped(<vc:modules/item_module_type:14>, [[<betterrecords:record>, null, <betterrecords:record>],
						     [<immersiveengineering:metal_decoration0:4>, <betterrecords:record>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:15>);
recipes.addShaped(<vc:modules/item_module_type:15>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:5>, <betterrecords:frequencycrystal>, <immersiveengineering:metal_decoration0:5>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
// cruise control mod
recipes.remove(<vc:modules/item_module_type:16>);
recipes.addShaped(<vc:modules/item_module_type:16>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <opencomputers:component>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:17>);
recipes.addShaped(<vc:modules/item_module_type:17>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:4>, <opencomputers:component>, <immersiveengineering:metal_decoration0:4>],
						     [<vc:modules/item_module_type>, <tconstruct:tough_binding>.withTag({Material: "manasteel"}), <vc:modules/item_module_type>]]);
recipes.remove(<vc:modules/item_module_type:18>);
recipes.addShaped(<vc:modules/item_module_type:18>, [[null, null, null],
						     [<immersiveengineering:metal_decoration0:5>, <opencomputers:component>, <immersiveengineering:metal_decoration0:5>],
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

//// railcraft - chooooo choo bitches
recipes.removeShaped(<minecraft:rail> * 24, [[<mekanism:ingot:1>, null, <mekanism:ingot:1>],
				             [<mekanism:ingot:1>, <minecraft:stick>, <mekanism:ingot:1>],
					     [<mekanism:ingot:1>, null, <mekanism:ingot:1>]]);
// basic rail
mods.mekanism.compressor.addRecipe(<immersiveengineering:material:1>, <gas:oxygen>, <railcraft:rail>);
// fancy rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods>, <gas:ethene>, <railcraft:rail:1>);
// high speed rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods:6>, <gas:hydrogenchloride>, <railcraft:rail:3>);
// reinforced rail
mods.mekanism.compressor.addRecipe(<immersiveengineering:material:2>, <gas:ethene>, <railcraft:rail:4>);
// electric rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods:1>, <gas:hydrogenchloride>, <railcraft:rail:5>);
