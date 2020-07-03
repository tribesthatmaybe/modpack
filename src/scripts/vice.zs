import crafttweaker.item.IItemStack;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.potions.IPotion;

// cocktails can have consequences
val boozeTho = [
  <brewcraft:totalvodkaitem>,
  <brewcraft:handmadevodkaitem>
] as IItemStack[];

logger.logInfo("lets get rekt with brewcraft");

mods.hungertweaker.events.HungerEvents.onFoodEaten(function(event as mods.hungertweaker.events.FoodEatenEvent) {
    for booze in boozeTho {
       logger.logInfo("Comparing " + booze.name + " vs " + event.food.name);
       if (booze.name == event.food.name) {
          logger.logInfo(event.player.name + " gettin rekt off of " + booze.name);
          event.player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(300, 1));
       }
    }
});
