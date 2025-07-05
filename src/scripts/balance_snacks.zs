import crafttweaker.item.IItemStack;
import mods.hungertweaker.FoodValues;
import crafttweaker.player.IPlayer;
import mods.hungertweaker.events.FoodEatenEvent;
import mods.hungertweaker.events.HungerEvents;

//// too many snacks bc pams gives us (almost) all the snacks
val dropSnacks = [
    <actuallyadditions:item_food:14>,   # pizza
    <actuallyadditions:item_food:11>,   # footlongs are the new subs
    <actuallyadditions:item_food:2>,    # carrot juice
    <actuallyadditions:item_food:3>,    # fish and chips
    <actuallyadditions:item_food:6>,    # spaghetti
    <actuallyadditions:item_food:7>,    # noodle
    <actuallyadditions:item_food:13>,   # hamburger
    <actuallyadditions:item_food:18>,   # doughnut
    <actuallyadditions:item_food:4>,    # fries
    <actuallyadditions:item_food:5>,    # fry
    <actuallyadditions:item_food:0>,    # cheese
    <actuallyadditions:item_food:1>,    # pumpkin stew
    <actuallyadditions:item_food:10>,   # toats
    <actuallyadditions:item_food:19>,   # chocolate toast
    <actuallyadditions:item_food:20>,   # bacon
    <actuallyadditions:item_rice_seed>, # rice and rice accesories
    <actuallyadditions:item_food:16>,
    <actuallyadditions:item_resonant_rice>,
    <actuallyadditions:item_food:12>,   # "big cookie"
    <cfm:item_kebab>,
    <cfm:item_kebab_cooked>,
    <cfm:item_flesh>,
    <cfm:item_flesh_cooked>,
    <cfm:item_sausage>,
    <cfm:item_sausage_cooked>
] as IItemStack[];

for snack in dropSnacks {
  mods.jei.JEI.removeAndHide(snack);
}

//// dranks
global harvestJuices as string[] = [
    "apricot",
    "blackberry",
    "blueberry",
    "cactusfruit",
    "cranberry",
    "fig",
    "kiwi",
    "lime",
    "mango",
    "papaya",
    "peach",
    "pear",
    "persimmon",
    "plum",
 //   "pomegranate",
    "raspberry",
    "starfruit"
];

// todo this needs to be optimized a-la vice.zs
function bottleRefund(food as IItemStack) as bool {
    for drank in harvestJuices {
	if (food.definition.id == "harvestcraft:" + drank + "juiceitem" ||
	       food.definition.id == "harvestcraft:" + drank + "smoothieitem" ) {
	    return true;
	}
    }
    return false;
}

HungerEvents.onFoodEaten(function(event as FoodEatenEvent) {
    if ( event.player.world.isRemote() ) {
        return;
    }
    if ( bottleRefund(event.food) ) {
	if ( "juiceitem" in event.food.definition.id ) {
	    event.player.give(<minecraft:glass_bottle>);
	} else {
	    event.player.give(<cfm:item_cup>);
	}
    }

    return;
});


for drank in harvestJuices {
    var fruit = "harvestcraft:" + drank + "item";
    var juice = "harvestcraft:" + drank + "juiceitem";
    var smoothie = "harvestcraft:" + drank + "smoothieitem";
    var i_fruit = itemUtils.getItem(fruit);
    var i_juice = itemUtils.getItem(juice);
    var i_smoothie = itemUtils.getItem(smoothie);

    if ( isNull(i_fruit) ) {
	logger.logWarning("no fruit found for " + fruit);
    } else {
	if ( isNull(i_juice) ) {
	    logger.logWarning("no juice found for " + juice);
	} else {
            i_juice.foodValues.hunger = 0.5;
    	    i_juice.foodValues.saturationModifier = 0.25;
	    scripts.shared.recipeRemapShapeless(i_juice, [
		i_fruit, i_fruit, <cfm:item_cup>,
		<harvestcraft:juiceritem>.reuse(), <minecraft:snowball>,
		<minecraft:milk_bucket>
	    ]);
	}
	if ( isNull(i_smoothie) ) {
	    logger.logWarning("no smoothie found for " + smoothie);
	} else {
	    i_smoothie.foodValues.hunger = 1.5;
	    i_smoothie.foodValues.saturationModifier = 3.0;
	    scripts.shared.recipeRemapShapeless(i_juice, [
		i_fruit, i_fruit, <minecraft:glass_bottle>,
		<harvestcraft:juiceritem>.reuse()]);
	}
    }
}

//// drinks
val hydrationDrinks = [
    <brewcraft:redbeeritem>,
    <brewcraft:bluebeeritem>,
    <harvestcraft:rootbeersodaitem>,
    <harvestcraft:rootbeerfloatitem>,
    <harvestcraft:cherrysodaitem>,
    <harvestcraft:colasodaitem>,
    <harvestcraft:gingersodaitem>,
    <harvestcraft:grapefruitsodaitem>,
    <harvestcraft:grapesodaitem>,
    <harvestcraft:lemonlimesodaitem>,
    <harvestcraft:orangesodaitem>,
    <harvestcraft:strawberrysodaitem>,
    <harvestcraft:applejuiceitem>,
    <harvestcraft:carrotjuiceitem>,
    <harvestcraft:cherryjuiceitem>,
    <harvestcraft:grapefruitjuiceitem>,
    <harvestcraft:grapejuiceitem>,
    <harvestcraft:melonjuiceitem>,
    <harvestcraft:orangejuiceitem>,
    <harvestcraft:strawberryjuiceitem>,
    <harvestcraft:cherryslushieitem>
] as IItemStack[];

//// adding in some pams compat
// aa rice dough
recipes.addShaped(<actuallyadditions:item_misc:9>, [
    [<harvestcraft:riceitem>, <harvestcraft:riceitem>, null],
    [<harvestcraft:riceitem>, null, null],
    [null, null, null]
]);
