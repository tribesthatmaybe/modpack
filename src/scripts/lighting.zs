import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//// dat glow coal tho
recipes.remove(<realistictorches:glowstone_crystal>);
recipes.addShaped(<realistictorches:glowstone_crystal>, [[null, <realistictorches:glowstone_paste>, null],
							 [<realistictorches:glowstone_paste>, <minecraft:coal>, <realistictorches:glowstone_paste>],
							 [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal>, [[null, <realistictorches:glowstone_paste>, null],
							 [<realistictorches:glowstone_paste>, <minecraft:coal>, <realistictorches:glowstone_paste>],
							 [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 2, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <immersiveengineering:material:6>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal>, [[null, <realistictorches:glowstone_paste>, null],
							 [<realistictorches:glowstone_paste>, <minecraft:coal:1>, <realistictorches:glowstone_paste>],
							 [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 2, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <mysticalagriculture:coal>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 3, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <mysticalagriculture:coal:1>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 4, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <mysticalagriculture:coal:2>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 5, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <mysticalagriculture:coal:3>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 6, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <mysticalagriculture:coal:4>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 3, [[<mekanism:biofuel>, <realistictorches:glowstone_paste>, <mekanism:biofuel>],
						             [<realistictorches:glowstone_paste>, <mekanism:biofuel>, <realistictorches:glowstone_paste>],
						             [<mekanism:biofuel>, <realistictorches:glowstone_paste>, <mekanism:biofuel>]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 2, [[null, <realistictorches:glowstone_paste>, null],
							     [<realistictorches:glowstone_paste>, <railcraft:generic:5>, <realistictorches:glowstone_paste>],
							     [null, <realistictorches:glowstone_paste>, null]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 2, [[<minecraft:paper>, <realistictorches:glowstone_paste>, <minecraft:paper>],
							     [<realistictorches:glowstone_paste>, <railcraft:fluid_bottle_creosote>, <realistictorches:glowstone_paste>],
							     [<minecraft:paper>, <realistictorches:glowstone_paste>, <minecraft:paper>]]);
recipes.addShaped(<realistictorches:glowstone_crystal> * 2, [[<minecraft:paper>, <realistictorches:glowstone_paste>, <minecraft:paper>],
						             [<realistictorches:glowstone_paste>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), <realistictorches:glowstone_paste>],
							     [<minecraft:paper>, <realistictorches:glowstone_paste>, <minecraft:paper>]]);
// machine based glowstone paste
mods.mekanism.infuser.addRecipe("BIO", 50, <minecraft:glowstone_dust>, <realistictorches:glowstone_paste>);
mods.mekanism.chemical.injection.addRecipe(<minecraft:glowstone_dust>, <gas:ethene>, <realistictorches:glowstone_paste>);
mods.mekanism.chemical.injection.addRecipe(<mekanism:ingot:3>, <gas:sulfuricacid>, <realistictorches:glowstone_paste> * 3);

val dyeArray = [
    <ore:dyeBlack>,
    <ore:dyeRed>,
    <ore:dyeGreen>,
    <ore:dyeBrown>,
    <ore:dyeBlue>,
    <ore:dyePurple>,
    <ore:dyeCyan>,
    <ore:dyeLightGray>,
    <ore:dyeGray>,
    <ore:dyePink>,
    <ore:dyeLime>,
    <ore:dyeYellow>,
    <ore:dyeLightBlue>,
    <ore:dyeMagenta>,
    <ore:dyeOrange>,
    <ore:dyeWhite>
] as IOreDictEntry[];

//// illumar
for i, dye in dyeArray {
    val illumar = itemUtils.getItem("projectred-core:resource_item", (15 - i) + 500);
    recipes.remove(illumar);
    recipes.addShaped(illumar * 4, [[dye, <realistictorches:glowstone_paste>, dye],
    			            [<realistictorches:glowstone_paste>, <appliedenergistics2:material:3>, <realistictorches:glowstone_paste>],
				    [dye, <realistictorches:glowstone_paste>, dye]]);
    recipes.addShaped(illumar * 4, [[dye, <realistictorches:glowstone_paste>, dye],
    			            [<realistictorches:glowstone_paste>, <appliedenergistics2:material:2>, <realistictorches:glowstone_paste>],
				    [dye, <realistictorches:glowstone_paste>, dye]]);
}
//// vanilla
recipes.remove(<minecraft:redstone_lamp>);
recipes.addShaped(<minecraft:redstone_lamp>, [[null, <ore:dustRedstone>, null],
					      [<ore:dustRedstone>, <realistictorches:glowstone_crystal>, <ore:dustRedstone>],
					      [null, <ore:dustRedstone>, null]]);
recipes.remove(<minecraft:sea_lantern>);
recipes.addShaped(<minecraft:sea_lantern>, [[<ore:gemPrismarine>, <ore:dustPrismarine>, <ore:gemPrismarine>],
					    [<ore:dustPrismarine>, <realistictorches:glowstone_crystal>, <ore:dustPrismarine>],
					    [<ore:gemPrismarine>, <ore:dustPrismarine>, <ore:gemPrismarine>]]);

////crayfish lamp
for i in 0 .. 15 {
    val illumar = itemUtils.getItem("projectred-core:resource_item", (15 - i) + 500);
    val lamp = itemUtils.getItem("cfm:lamp_off", 15 - i);
    recipes.remove(lamp);
    recipes.addShaped(lamp, [[<minecraft:wool>, <immersiveengineering:material:1>, <minecraft:wool>],
    			     [<minecraft:wool>, illumar, <minecraft:wool>],
			     [null, <minecraft:stained_hardened_clay:15>, null]]);
}


//// mekanism glowies
for i, dye in dyeArray {
    val glowpanel = itemUtils.getItem("mekanism:glowpanel", i);
    val glowplasticblock = itemUtils.getItem("mekanism:glowplasticblock", i);
    val illumar = itemUtils.getItem("projectred-core:resource_item", (15 - i) + 500);
    val plasticblock = itemUtils.getItem("mekanism:plasticblock", i);
    recipes.remove(glowpanel);
    recipes.remove(glowplasticblock);
    recipes.addShaped(glowpanel * 3, [[<tconstruct:clear_glass>, <mekanism:polyethene:2>, <tconstruct:clear_glass>],
			              [<mekanism:polyethene:2>, illumar, <mekanism:polyethene:2>],
			              [illumar, <mekanism:polyethene:2>, illumar]]);
    recipes.addShaped(glowpanel * 4, [[<mekanism:glowpanel:*>, null, <mekanism:glowpanel:*>],
    				      [null, dye, null],
				      [<mekanism:glowpanel:*>, null, <mekanism:glowpanel:*>]]);
    recipes.addShaped(glowplasticblock * 4, [[illumar, plasticblock, illumar],
				             [plasticblock, null, plasticblock],
				             [illumar, plasticblock, illumar]]);
    recipes.addShaped(glowplasticblock * 4, [[<mekanism:glowplasticblock:*>, null, <mekanism:glowplasticblock:*>],
    				             [null, dye, null],
					     [<mekanism:glowplasticblock:*>, null, <mekanism:glowplasticblock:*>]]);
}

//// ie lighting
// basic lantern
recipes.remove(<immersiveengineering:metal_decoration2:4>);
recipes.addShaped(<immersiveengineering:metal_decoration2:4>, [[null, <immersiveengineering:metal:39>, null],
							       [<tconstruct:clear_glass>, <realistictorches:glowstone_crystal>, <tconstruct:clear_glass>],
							       [null, <immersiveengineering:metal:30>, null]]);
// electric lamp
recipes.remove(<immersiveengineering:metal_decoration1:4>);
recipes.addShaped(<immersiveengineering:metal_device1:4>, [[null, <immersiveengineering:metal:38>, null],
							   [<tconstruct:clear_glass>, <realistictorches:glowstone_crystal>, <tconstruct:clear_glass>],
							   [<immersiveengineering:metal:30>, <immersiveengineering:material:26>, <immersiveengineering:metal:30>]]);
// flood lamp
recipes.remove(<immersiveengineering:metal_device1:9>);
recipes.addShaped(<immersiveengineering:metal_device1:9>, [[<immersiveengineering:material:26>, <immersiveengineering:metal:38>, <immersiveengineering:metal:38>],
							   [<immersiveengineering:material:8>, <realistictorches:glowstone_crystal>, <tconstruct:clear_glass>],
							   [<immersiveengineering:metal:30>, <railcraft:gear:1>, <immersiveengineering:metal:30>]]);
//// quark lights
recipes.remove(<quark:paper_lantern>);
recipes.addShaped(<quark:paper_lantern>, [[<minecraft:paper>, <tconstruct:large_plate>.withTag({Material: "wood"}), <minecraft:paper>],
					  [<minecraft:paper>, <realistictorches:glowstone_crystal>, <minecraft:paper>],
					  [<minecraft:paper>, <tconstruct:large_plate>.withTag({Material: "paper"}), <minecraft:paper>]]);

//// fairy lights
for i, dye in dyeArray {
    // the lights
    val fairy_light = itemUtils.getItem("fairylights:light", i);
    val paper_lantern = itemUtils.getItem("fairylights:light", i + 16);
    val orb_lantern = itemUtils.getItem("fairylights:light", i + 32);
    val flower_light = itemUtils.getItem("fairylights:light", i + 48);
    val ornate_lantern = itemUtils.getItem("fairylights:light", i + 64);
    val oil_lantern = itemUtils.getItem("fairylights:light", i + 80);
    val jack_o_lantern = itemUtils.getItem("fairylights:light", i + 112);
    val skull_light = itemUtils.getItem("fairylights:light", i + 128);
    val ghost_light = itemUtils.getItem("fairylights:light", i + 144);
    val spider_light = itemUtils.getItem("fairylights:light", i + 160);
    val witch_light = itemUtils.getItem("fairylights:light", i + 176);
    val snowflake_light = itemUtils.getItem("fairylights:light", i + 192);
    val icicle_light = itemUtils.getItem("fairylights:light", i + 208);
    val meteor_light = itemUtils.getItem("fairylights:light", i + 224);
    // the colors
    val color_glass = itemUtils.getItem("tconstruct:clear_stained_glass", 15 - i);
    val illumar = itemUtils.getItem("projectred-core:resource_item", (15 - i) + 500);
    // remove old recipes
    recipes.remove(fairy_light);
    recipes.remove(paper_lantern);
    recipes.remove(orb_lantern);
    recipes.remove(flower_light);
    recipes.remove(ornate_lantern);
    recipes.remove(oil_lantern);
    recipes.remove(jack_o_lantern);
    recipes.remove(skull_light);
    recipes.remove(ghost_light);
    recipes.remove(spider_light);
    recipes.remove(snowflake_light);
    recipes.remove(icicle_light);
    recipes.remove(meteor_light);
    // add new recipes
    recipes.addShaped(fairy_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    				        [color_glass,  <realistictorches:glowstone_crystal>, color_glass],
				        [null, <minecraft:iron_ingot>, null]]);
    recipes.addShaped(paper_lantern * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    				          [<minecraft:paper>, illumar, <minecraft:paper>],
				          [null, <minecraft:paper>, null]]);
    recipes.addShaped(orb_lantern * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    				        [<minecraft:string>, illumar, <minecraft:string>],
				        [null, <minecraft:wool:*>, null]]);
    recipes.addShaped(flower_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    				         [<ore:flowerRed>, illumar, <ore:flowerYellow>],
				         [null, <mekanism:polyethene:1>, null]]);
    recipes.addShaped(ornate_lantern * 4, [[<immersiveengineering:tool:1>, <immersiveengineering:metal:40>, null],
    			                   [color_glass, <realistictorches:glowstone_crystal>, color_glass],
				           [null, <immersiveengineering:metal:32>, null]]);
    recipes.addShaped(oil_lantern * 4, [[<immersiveengineering:tool:1>, <tconstruct:large_plate>.withTag({Material: "wood"}), null],
    			                [color_glass, <realistictorches:glowstone_crystal>, color_glass],
			                [null, <tconstruct:large_plate>.withTag({Material: "stone"}), null]]);
    recipes.addShaped(oil_lantern * 4, [[<immersiveengineering:tool:1>, <tconstruct:large_plate>.withTag({Material: "wood"}), null],
    			                [color_glass, <realistictorches:glowstone_crystal>, color_glass],
			                [null, <tconstruct:large_plate>.withTag({Material: "stone"}), null]]);
    recipes.addShaped(jack_o_lantern * 4, [[<immersiveengineering:tool:1>, <tconstruct:large_plate>.withTag({Material: "wood"}), null],
    			                   [null, <minecraft:pumpkin>, null],
			                   [null, illumar, null]]);
    recipes.addShaped(skull_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                [null, <fossil:skull_block>, null],
			                [null, illumar, null]]);
    recipes.addShaped(ghost_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                [<immersiveengineering:material:5>, illumar, <immersiveengineering:material:5>],
			                [<immersiveengineering:material:5>, null, <immersiveengineering:material:5>]]);
    recipes.addShaped(spider_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                 [<minecraft:spider_eye>, illumar, <minecraft:spider_eye>],
			                 [null, <mekanism:polyethene:1>, null]]);
    recipes.addShaped(witch_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                 [<minecraft:glass_bottle>, illumar, <minecraft:wheat>],
			                 [null, <mekanism:polyethene:1>, null]]);
    recipes.addShaped(snowflake_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                    [color_glass, <minecraft:snowball>, color_glass],
			                    [null, null, null]]);
    recipes.addShaped(icicle_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                 [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
			                 [null, <tconstruct:clear_glass>, null]]);
    recipes.addShaped(meteor_light * 4, [[<immersiveengineering:tool:1>, <minecraft:iron_ingot>, null],
    			                 [null, color_glass, null],
			                 [null, <mekanism:polyethene:1>, null]]);
}
//// so many lanterns
val lanternColors = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "gray",
    "light_gray",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black"
] as string[];

val lanternTypes = [
    "andesite",
    "bone",
    "bricks",
    "cobblestone",
    "dark_prismarine",
    "diamond",
    "diorite",
    "emerald",
    "end_stone",
    "gold",
    "granite",
    "iron",
    "mossy_cobblestone",
    "normal",
    "normal_nether_bricks",
    "normal_sandstone",
    "obsidian",
    "prismarine",
    "purpur",
    "quartz",
    "red_nether_bricks",
    "red_sandstone",
    "smooth_stone",
    "stone",
    "stone_bricks"
] as string[];

val lanternMaterial = [
    "stone:5",
    "bone_block",
    "brick",
    "cobblestone",
    "prismarine:2",
    "diamond",
    "stone:3",
    "emerald",
    "end_stone",
    "gold_ingot",
    "stone:1",
    "iron_ingot",
    "mossy_cobblestone",
    "planks",
    "nether_brick",
    "sandstone",
    "obsidian",
    "prismarine",
    "purpur",
    "quartz",
    "red_nether_bricks",
    "red_sandstone",
    "stonebrick:2",
    "stone",
    "stonebrick"
] as string[];

for i, lanternType in lanternTypes {
    val baseLanternString = "additionallanterns:" + lanternType + "_lantern";
    val baseLantern = itemUtils.getItem(baseLanternString);
    val materialBits as string[] = lanternMaterial[i].split(":");
    var material as IItemStack;
    if ( materialBits.length == 1 ) {
        material = itemUtils.getItem("minecraft:" + materialBits[0]);
    } else {
        material = itemUtils.getItem("minecraft:" + materialBits[0], materialBits[1]);
    }
    recipes.remove(baseLantern);
    recipes.addShaped(baseLantern * 4, [[null, material, null],
				        [material, <realistictorches:glowstone_crystal>, material],
				        [<tconstruct:clear_glass>, <minecraft:iron_ingot>, <tconstruct:clear_glass>]]);
    recipes.addShapeless(baseLantern, [oreDict.get(lanternType + "_lanterns")]);
    for j, lanternColor in lanternColors {
    	val colorLantern = itemUtils.getItem("additionallanterns:" + lanternColor + "_" + lanternType + "_lantern");
	val illumar = itemUtils.getItem("projectred-core:resource_item", j + 500);
	recipes.remove(colorLantern);
	recipes.addShaped(colorLantern * 4, [[null, material, null],
				       	     [material, illumar, material],
					     [<tconstruct:clear_glass>, <minecraft:iron_ingot>, <tconstruct:clear_glass>]]);
    }
}


//// projectred lamps
for i in 0 .. 15 {
    val illumar = itemUtils.getItem("projectred-core:resource_item", i + 500);
    val lamp = itemUtils.getItem("projectred-illumination:lamp", i);
    val inverted_lamp = itemUtils.getItem("projectred-illumination:lamp", i + 16);
    val light_button = itemUtils.getItem("projectred-illumination:light_button", i);
    val feedback_light_button = itemUtils.getItem("projectred-illumination:feedback_light_button", i);
    val lantern = itemUtils.getItem("projectred-illumination:lantern", i);
    val inverted_lantern = itemUtils.getItem("projectred-illumination:inverted_lantern", i);
    val fixture = itemUtils.getItem("projectred-illumination:fixture_light", i);
    val inverted_fixture = itemUtils.getItem("projectred-illumination:inverted_fixture_light", i);
    val fallout = itemUtils.getItem("projectred-illumination:fallout_lamp", i);
    val inverted_fallout = itemUtils.getItem("projectred-illumination:inverted_fallout_lamp", i);
    val cage = itemUtils.getItem("projectred-illumination:cage_lamp", i);
    val inverted_cage = itemUtils.getItem("projectred-illumination:inverted_cage_lamp", i);

    recipes.remove(lamp);
    recipes.remove(inverted_lamp);
    recipes.remove(light_button);
    recipes.remove(feedback_light_button);
    recipes.remove(lantern);
    recipes.remove(inverted_lantern);
    recipes.remove(fixture);
    recipes.remove(inverted_fixture);
    recipes.remove(fallout);
    recipes.remove(inverted_fallout);
    recipes.remove(cage);
    recipes.remove(inverted_cage);

    recipes.addShaped(lamp * 4, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
    			         [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				 [<tconstruct:clear_glass>, <ore:dustRedstone>, <tconstruct:clear_glass>]]);
    recipes.addShaped(inverted_lamp * 4, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
    				          [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				          [<tconstruct:clear_glass>, <minecraft:redstone_torch>, <tconstruct:clear_glass>]]);
    recipes.addShapeless(light_button * 4, [illumar, <minecraft:stone_button>]);
    recipes.addShapeless(feedback_light_button * 4, [light_button, <minecraft:redstone_torch>]);
    recipes.addShaped(lantern * 4, [[<projectred-core:resource_item>, <immersiveengineering:metal:39>, <projectred-core:resource_item>],
    			            [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				    [<projectred-core:resource_item>, <ore:dustRedstone>, <projectred-core:resource_item>]]);
    recipes.addShaped(inverted_lantern * 4, [[<projectred-core:resource_item>, <immersiveengineering:metal:39>, <projectred-core:resource_item>],
    			                     [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				             [<projectred-core:resource_item>, <minecraft:redstone_torch>, <projectred-core:resource_item>]]);
    recipes.addShaped(fixture * 4, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
                                    [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				    [<projectred-core:resource_item>, <projectred-core:resource_item:1>, <projectred-core:resource_item>]]);
    recipes.addShaped(inverted_fixture * 4, [[<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
                                             [<tconstruct:clear_glass>, illumar, <tconstruct:clear_glass>],
				             [<projectred-core:resource_item>, <projectred-core:resource_item:11>, <projectred-core:resource_item>]]);
    recipes.addShaped(fallout * 4, [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
                                    [<minecraft:iron_bars>, illumar, <minecraft:iron_bars>],
				    [<projectred-core:resource_item>, <projectred-core:resource_item:1>, <projectred-core:resource_item>]]);
    recipes.addShaped(inverted_fallout * 4, [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
                                             [<minecraft:iron_bars>, illumar, <minecraft:iron_bars>],
				             [<projectred-core:resource_item>, <projectred-core:resource_item:11>, <projectred-core:resource_item>]]);
    recipes.addShaped(cage * 4, [[null, <minecraft:iron_bars>, null],
                                 [<minecraft:iron_bars>, illumar, <minecraft:iron_bars>],
				 [<projectred-core:resource_item>, <projectred-core:resource_item:1>, <projectred-core:resource_item>]]);
    recipes.addShaped(inverted_cage * 4, [[null, <minecraft:iron_bars>, null],
                                          [<minecraft:iron_bars>, illumar, <minecraft:iron_bars>],
				          [<projectred-core:resource_item>, <projectred-core:resource_item:11>, <projectred-core:resource_item>]]);

}

//// trafficcontrol
recipes.remove(<trafficcontrol:street_light_double>);
recipes.addShaped(<trafficcontrol:street_light_double>, [[<projectred-illumination:inverted_fixture_light>, <immersiveengineering:metal:38>, <projectred-illumination:inverted_fixture_light>],
							[null, <engineersdecor:thin_steel_pole>, null],
							[null, <engineersdecor:thin_steel_pole>, null]]);
recipes.remove(<trafficcontrol:street_light_single>);
recipes.addShaped(<trafficcontrol:street_light_single>, [[null, <immersiveengineering:metal:38>, <projectred-illumination:inverted_fixture_light>],
							 [null, <engineersdecor:thin_steel_pole>, null],
							 [null, <engineersdecor:thin_steel_pole>, null]]);
