import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

// goooooooo. mix to get biomass. then PRC to get bio goo.
var bigBioItems as IItemStack[] = [
    <harvestcraft:escargotitem>,
    <betteranimalsplus:goatcheese>,
    <quark:root>,
    <minecraft:rotten_flesh>,
    <minecraft:spider_eye>,
    <minecraft:chorus_fruit>,
    <plants2:blackberry>, // todo merge
    <minecraft:carrot>,
    <minecraft:wheat>,
    <plants2:raspberry>, // todo merge
    <plants2:fire_fruit>,
    <plants2:blueberry>, // todo merge
    <minecraft:beetroot>
];

var smallBioItems as IItemStack[] = [
    <plants2:saffron>,
    <plants2:daucus_c>,
    <minecraft:potato>,
    <minecraft:apple>,
    <minecraft:melon>,
    <plants2:okra>,    // todo - merge?
    <plants2:rubus_o>,
    <plants2:rubus_p>,
    <plants2:ambrosia_a>,
    <plants2:solanum_n>,
    <plants2:solanum_c>,
    <plants2:solanum_d>,
    <plants2:plantago_m>,
    <plants2:pineapple>, // todo merge
    <harvestcraft:bananaitem>,
    <harvestcraft:pineappleitem>,
    <harvestcraft:blackberryitem>,
    <harvestcraft:cranberryitem>,
    <harvestcraft:barleyitem>,
    <harvestcraft:tamarinditem>,
    <harvestcraft:huckleberryitem>,
    <harvestcraft:whitemushroomitem>,
    <harvestcraft:chiliitem>,
    <harvestcraft:raspberryitem>,
    <harvestcraft:almonditem>,
    <harvestcraft:cherryitem>,
    <harvestcraft:oatsitem>,
    <harvestcraft:elderberryitem>,
    <harvestcraft:celeryitem>,
    <harvestcraft:ryeitem>,
    <harvestcraft:strawberryitem>,
    <harvestcraft:crabrawitem>,
    <harvestcraft:garlicitem>,
    <harvestcraft:seaweeditem>,
    <harvestcraft:peanutitem>,
    <brewcraft:hopsitem>,
    <harvestcraft:kiwiitem>,
    <harvestcraft:turnipitem>,
    <harvestcraft:parsnipitem>,
    <harvestcraft:flaxitem>,
    <harvestcraft:jackfruititem>,
    <harvestcraft:agaveitem>,
    <harvestcraft:coconutitem>,
    <harvestcraft:avocadoitem>,
    <harvestcraft:pearitem>,
    <harvestcraft:bellpepperitem>,
    <harvestcraft:tealeafitem>,
    <harvestcraft:cashewitem>,
    <harvestcraft:dateitem>,
    <harvestcraft:mangoitem>,
    <harvestcraft:taroitem>,
    <harvestcraft:lettuceitem>,
    <harvestcraft:gooseberryitem>,
    <harvestcraft:durianitem>,
    <harvestcraft:grapeitem>,
    <harvestcraft:breadfruititem>,
    <harvestcraft:guavaitem>,
    <harvestcraft:peppermintitem>,
    <harvestcraft:radishitem>,
    <harvestcraft:nutmegitem>,
    <harvestcraft:walnutitem>,
    <harvestcraft:beanitem>,
    <harvestcraft:pecanitem>,
    <harvestcraft:honeyitem>,
    <harvestcraft:dragonfruititem>,
    <harvestcraft:rutabagaitem>,
    <harvestcraft:rhubarbitem>,
    <harvestcraft:spinachitem>,
    <harvestcraft:okraitem>,
    <harvestcraft:orangeitem>,
    <harvestcraft:peasitem>,
    <harvestcraft:pralinesitem>,
    <harvestcraft:caulifloweritem>,
    <harvestcraft:zucchiniitem>,
    <harvestcraft:coffeebeanitem>,
    <harvestcraft:amaranthitem>,
    <harvestcraft:arrowrootitem>,
    <harvestcraft:cornitem>,
    <harvestcraft:lemonitem>,
    <harvestcraft:beetitem>,
    <harvestcraft:soursopitem>,
    <harvestcraft:lentilitem>,
    <harvestcraft:chestnutitem>,
    <harvestcraft:bambooshootitem>,
    <harvestcraft:cheeseitem>,
    <harvestcraft:leekitem>,
    <harvestcraft:tomatoitem>,
    <harvestcraft:lycheeitem>,
    <harvestcraft:ediblerootitem>,
    <harvestcraft:chilipepperitem>,
    <harvestcraft:grapefruititem>,
    <harvestcraft:greengrapeitem>,
    <harvestcraft:oliveitem>,
    <harvestcraft:cactusfruititem>,
    <harvestcraft:broccoliitem>,
    <harvestcraft:artichokeitem>,
    <harvestcraft:soybeanitem>,
    <harvestcraft:cabbageitem>,
    <harvestcraft:cucumberitem>,
    <harvestcraft:quinoaitem>,
    <harvestcraft:blueberryitem>,
    <harvestcraft:papayaitem>,
    <harvestcraft:rambutanitem>,
    <harvestcraft:riceitem>,
    <harvestcraft:sweetpotatoitem>,
    <harvestcraft:manjuuitem>,
    <harvestcraft:peachitem>,
    <harvestcraft:onionitem>,
    <harvestcraft:gingeritem>,
    <harvestcraft:curryleafitem>,
    <harvestcraft:starfruititem>,
    <harvestcraft:plumitem>,
    <harvestcraft:jicamaitem>,
    <plants2:tahitian_spinach>
];

for item in <ore:fish>.items {
    bigBioItems += item;
}

for item in <ore:meatRaw>.items {
    bigBioItems += item;
}

for item in <ore:ingredientEgg>.items {
    bigBioItems += item;
}

for bioItem in bigBioItems {
    mods.immersiveengineering.Mixer.addRecipe(<liquid:biomass> * 500, <liquid:brine> * 500, [bioItem, <minecraft:dirt>], 2048);
}

for bioItem in smallBioItems {
    mods.immersiveengineering.Mixer.addRecipe(<liquid:biomass> * 250, <liquid:brine> * 500, [bioItem, <minecraft:dirt>], 2048);
}

recipes.remove(<fossil:bio_goo>);
// mekanism oredict doesn't work?
var gooeyItems as IItemStack[] = [
    <minecraft:slime_ball>,
    <actuallyadditions:item_misc:12>,    // tice ball
    <tconstruct:edible:1>,               // tc slimese
    <tconstruct:edible:2>,
    <tconstruct:edible:3>,
    <tconstruct:edible:4>,
    <fossil:tardrop>,
    <immersivepetroleum:material>        // bitumen
];
for item in gooeyItems {
    mods.mekanism.reaction.addRecipe(item * 2, <liquid:biomass> * 2500, <gas:hydrogenchloride> * 5000, <fossil:bio_goo>, <gas:water>, 25000, 6000);
}

// add back in bio fuel as we lost it when we pulled mekanism crusher
mods.alchemistry.Evaporator.addRecipe(<mekanism:biofuel> * 3, <liquid:biomass> * 1500);
// also generate via squeezer from dirt and a decent amount of power
mods.immersiveengineering.Squeezer.addRecipe(<mekanism:biofuel>, <liquid:brine> * 250, <minecraft:dirt> * 2, 5000);
// biomass to biofuel via starch
mods.immersiveengineering.BottlingMachine.addRecipe(<mekanism:biofuel> * 3, <alchemistry:compound:19>, <liquid:biomass> * 2000);
