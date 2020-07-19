// give a bit of an xp boost at lower levels bc skills
import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.recipes.ICraftingInventory;
import crafttweaker.item.IItemStack;

var maxBoostLevel = 10;

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
    if ( event.player.world.isRemote() ) {
       // xp on client? in this economy?
       return;
    }
    var playerLevel = event.player.xp;
    if ( playerLevel <= maxBoostLevel) {
       var boostXP = 1 as int;
       if (event.output.isStackable) {
           if ( event.output.amount > 10 ) {
               boostXP = (event.output.amount * 0.1) as int;
           } else {
               boostXP = event.output.amount;
           }
       }
       logger.logInfo("player " + event.player.name + " boosted xp " + boostXP as string);
       event.player.removeXP(0 - boostXP);
    }
});