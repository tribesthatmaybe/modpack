import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// we try to enforce the use/gating of the "vehicle hammer"

// one of the tweaks we do removes the openblocks hang glider so this is actually the only recipe
recipes.addShaped(<openblocks:hang_glider>, [[null, <immersiveengineering:material:1>, null],[<projectred-core:resource_item:420>,
                                            <immersiveengineering:material:1>, <projectred-core:resource_item:420>],
                                            [<projectred-core:resource_item:420>, <vehicle:hammer>.reuse(), <projectred-core:resource_item:420>]]);


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

recipes.addShaped(<animalbikes:spiderbike>, [[<minecraft:spider_eye>, <minecraft:spider_eye>, <minecraft:spider_eye>],
                                            [<minecraft:spider_eye>, <minecraft:saddle>, <minecraft:spider_eye>],
                                            [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:creeperbike>, [[<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],
                                             [<minecraft:tnt>,<minecraft:saddle>, <minecraft:tnt>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:ponybike>, [[<minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>],
                                          [<minecraft:diamond>, <minecraft:saddle>, <minecraft:diamond>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:reindeerbike>, [[<minecraft:sapling:1>, <minecraft:sapling:1>, <minecraft:sapling:1>],
                                              [<minecraft:sapling:1>, <minecraft:saddle>, <minecraft:sapling:1>],
                                             [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:irongolembike>, [[<minecraft:vine>, <minecraft:iron_block>, <ore:plant>],
                                               [<minecraft:iron_block>, <minecraft:saddle>, <minecraft:iron_block>],
                                               [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:dinobike>, [[<animalbikes:fossil>, <animalbikes:fossil>, <animalbikes:fossil>],
                                          [<animalbikes:fossil>, <minecraft:saddle>, <animalbikes:fossil>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:chocobobike>, [[<minecraft:golden_carrot>, <minecraft:golden_carrot>, <minecraft:golden_carrot>],
                                             [<minecraft:golden_carrot>, <minecraft:saddle>, <minecraft:golden_carrot>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:flowerbike>, [[<ore:plant>, <ore:plant>, <ore:plant>],
                                            [<ore:plant>, <minecraft:saddle>, <ore:plant>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
recipes.addShaped(<animalbikes:polarbearbike>, [[<minecraft:fish:1>, <minecraft:fish:1>, <minecraft:fish:1>],
                                               [<minecraft:fish:1>, <minecraft:saddle>, <minecraft:fish:1>],
                                          [<tconstruct:pan_head>.withTag({Material: "iron"}), <vehicle:hammer>.reuse(), <tconstruct:pan_head>.withTag({Material: "iron"})]]);
