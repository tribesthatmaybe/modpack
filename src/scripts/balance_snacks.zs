import crafttweaker.item.IItemStack;
import mods.hungertweaker.FoodValues;

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
    <harvestcraft:apricotjuiceitem>,
    <harvestcraft:blackberryjuiceitem>,
    <harvestcraft:blueberryjuiceitem>,
    <harvestcraft:cactusfruitjuiceitem>,
    <harvestcraft:carrotjuiceitem>,
    <harvestcraft:cherryjuiceitem>,
    <harvestcraft:cranberryjuiceitem>,
    <harvestcraft:figjuiceitem>,
    <harvestcraft:grapefruitjuiceitem>,
    <harvestcraft:grapejuiceitem>,
    <harvestcraft:kiwijuiceitem>,
    <harvestcraft:limejuiceitem>,
    <harvestcraft:mangojuiceitem>,
    <harvestcraft:melonjuiceitem>,
    <harvestcraft:orangejuiceitem>,
    <harvestcraft:papayajuiceitem>,
    <harvestcraft:peachjuiceitem>,
    <harvestcraft:pearjuiceitem>,
    <harvestcraft:persimmonjuiceitem>,
    <harvestcraft:plumjuiceitem>,
    <harvestcraft:pomegranatejuiceitem>,
    <harvestcraft:raspberryjuiceitem>,
    <harvestcraft:starfruitjuiceitem>,
    <harvestcraft:strawberryjuiceitem>,
    <harvestcraft:cherryslushieitem>
] as IItemStack[];

for drink in hydrationDrinks {
    drink.foodValues.hunger = 0.5;
    drink.foodValues.saturationModifier = 0.25;
}


//// adding in some pams compat
// aa rice dough
recipes.addShaped(<actuallyadditions:item_misc:9>, [[<harvestcraft:riceitem>, <harvestcraft:riceitem>, null],
						   [<harvestcraft:riceitem>, null, null],
						   [null, null, null]]);
