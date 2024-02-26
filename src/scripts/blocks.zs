#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var tanSheetmetal = VanillaFactory.createBlock("tan_sheetmetal", <blockmaterial:iron>);
tanSheetmetal.setToolClass("pickaxe");
tanSheetmetal.setToolLevel(0);
tanSheetmetal.setBlockResistance(15.0);
tanSheetmetal.setBlockHardness(3.0);
tanSheetmetal.register();

// var playaBlock = VanillaFactory.createBlock("playa", <blockmaterial:sand>);
// playaBlock.register();
