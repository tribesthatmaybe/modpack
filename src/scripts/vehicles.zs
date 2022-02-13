import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// we try to enforce the use/gating of the "vehicle hammer"

// one of the tweaks we do removes the openblocks hang glider so this is actually the only recipe
recipes.addShaped(<openblocks:hang_glider>, [[null, <immersiveengineering:material:1>, null],[<immersiveengineering:material:5>,
                                            <immersiveengineering:material:1>, <immersiveengineering:material:5>],
                                            [<immersiveengineering:material:5>, <vehicle:hammer>.reuse(), <immersiveengineering:material:5>]]);


// animal bikes!
recipes.removeShaped(<animalbikes:spiderbike>, [[<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>],
                                               [<minecraft:spider_eye>, <minecraft:saddle>, <minecraft:spider_eye>],
                                               [<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>]]);
recipes.removeShaped(<animalbikes:creeperbike>, [[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],
                                                [<minecraft:tnt>, <minecraft:saddle>, <minecraft:tnt>],
                                                [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>]]);
recipes.removeShaped(<animalbikes:ponybike>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
                                             [<minecraft:diamond>, <minecraft:saddle>, <minecraft:diamond>],
                                             [<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>]]);
recipes.removeShaped(<animalbikes:reindeerbike>, [[<minecraft:sapling:1>, <minecraft:sapling:1>, <minecraft:sapling:1>],
                                                 [<minecraft:sapling:1>, <minecraft:saddle>, <minecraft:sapling:1>],
                                                 [<minecraft:sapling:1>, <minecraft:sapling:1>, <minecraft:sapling:1>]]);
recipes.removeShaped(<animalbikes:irongolembike>, [[<minecraft:vine>, <minecraft:iron_block>, <ore:plant>],
                                                  [<minecraft:iron_block>, <minecraft:saddle>, <minecraft:iron_block>],
                                                  [<minecraft:vine>, <minecraft:iron_block>, <minecraft:vine>]]);
recipes.removeShaped(<animalbikes:dinobike>, [[<animalbikes:fossil>, <animalbikes:fossil>, <animalbikes:fossil>],
                                             [<animalbikes:fossil>, <minecraft:saddle>, <animalbikes:fossil>],
                                             [<animalbikes:fossil>, <animalbikes:fossil>, <animalbikes:fossil>]]);
recipes.removeShaped(<animalbikes:chocobobike>, [[<minecraft:golden_carrot>, <minecraft:golden_carrot>, <minecraft:golden_carrot>],
                                                [<minecraft:golden_carrot>, <minecraft:saddle>, <minecraft:golden_carrot>],
                                                [<minecraft:golden_carrot>, <minecraft:golden_carrot>, <minecraft:golden_carrot>]]);
recipes.removeShaped(<animalbikes:flowerbike>, [[<ore:plant>, <ore:plant>, <ore:plant>],
                                               [<ore:plant>, <minecraft:saddle>, <ore:plant>],
                                               [<ore:plant>, <ore:plant>, <ore:plant>]]);
recipes.removeShaped(<animalbikes:polarbearbike>, [[<minecraft:fish:1>, <minecraft:fish:1>, <minecraft:fish:1>],
                                                  [<minecraft:fish:1>, <minecraft:saddle>, <minecraft:fish:1>],
                                                  [<minecraft:fish:1>, <minecraft:fish:1>, <minecraft:fish:1>]]);
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

// crayfish vehicle panel a more in line with what we want
recipes.removeShaped(<vehicle:panel> * 8, [[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
				      [<minecraft:concrete>, <minecraft:concrete>, <minecraft:concrete>],
				      [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);
recipes.addShaped(<vehicle:panel>, [[<mekanism:polyethene:2>, <immersiveengineering:metal:30>, <mekanism:polyethene:2>],
				   [<immersiveengineering:metal:39>, <mekanism:polyethene:2>, <immersiveengineering:metal:39>],
				   [<mekanism:polyethene:2>, <immersiveengineering:metal:30>, <mekanism:polyethene:2>]]);
// airshipssss
recipes.removeShaped(<vc:item_logic_chip>, [[<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>], [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]]);
recipes.addShaped(<vc:item_logic_chip>, [[<railcraft:plate:2>, <immersiveengineering:metal_decoration0:3>, <railcraft:plate:2>],
					[<mysticalagriculture:crafting:24>, <opencomputers:material:6>, <mysticalagriculture:crafting:24>],
					[<projectred-core:resource_item>, <projectred-core:resource_item>, <projectred-core:resource_item>]]);
