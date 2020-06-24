#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var distressedTanSheetmetal = VanillaFactory.createBlock("distressed_tan_sheetmetal", <blockmaterial:iron>);
distressedTanSheetmetal.setToolClass("pickaxe");
distressedTanSheetmetal.setToolLevel(0);
distressedTanSheetmetal.setBlockResistance(15.0);
distressedTanSheetmetal.setBlockHardness(3.0);
distressedTanSheetmetal.register();
