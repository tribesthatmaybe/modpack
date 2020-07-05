import crafttweaker.item.IItemStack;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.potions.IPotion;
import crafttweaker.world.IWorldInfo;
import crafttweaker.player.IPlayer;
import mods.hungertweaker.events.FoodEatenEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerRespawnEvent;

// cocktails can have consequences
val genericConsumables =
[
  <brewcraft:totalvodkaitem>,
  <brewcraft:handmadevodkaitem>
] as IItemStack[];

zenClass ttmbViceEffect {
    var name as string;
    var min_level as int;
    var max_level as int;
    var potion as IPotion;
    var duration_multiplier as double = 1.0;
    var effect_multiplier as int = 1;

    zenConstructor(p_name as string, p_min as int, p_max as int, p_potion as IPotion, p_multiplier as double) {
        name = p_name;
        min_level = p_min;
        max_level = p_max;
        potion = p_potion;
        duration_multiplier = p_multiplier;
        logger.logInfo("new vice effect " + name + " levels " + p_min as string + ":" + p_max as string + " potion " + potion.name + " @ " + duration_multiplier as string);
    }

    function effectMultiplier(p_multiplier as int) {
        effect_multiplier = p_multiplier;
    }

}

zenClass ttmbVice {
    var viceName as string = "";
    var viceConsumables as IItemStack[] = [];
    var viceDuration as int = 0;
    var viceEffects as ttmbViceEffect[] = [];

    // friendly name for logs
    // list of itemstack consumables
    zenConstructor(name as string, consumables as IItemStack[], duration as int) {
        viceName = name;
        viceDuration = duration;

        for consumable in consumables {
            if ( !consumable.isFood ) {
                logger.logWarning("non consumable " + consumable.name + " being ignored by " + viceName);
            } else {
                viceConsumables += consumable;
            }
        }
        mods.hungertweaker.events.HungerEvents.onFoodEaten(function(event as FoodEatenEvent) {
            this.foodEatenHandler(event);
        });
        events.onPlayerTick(function(event as PlayerTickEvent) {
            this.playerTickHandler(event);
        });
        events.onPlayerRespawn(function (event as PlayerRespawnEvent) {
            this.playerRespawnHandler(event);
        });
        logger.logInfo("lets get rekt with " + viceName + ". loaded " + viceConsumables.length as string + " items, base duration " + viceDuration as string);
    }

    function getTag(player as IPlayer) as string[] {
        for tag in player.tags {
            if (tag.startsWith("ttmb_rekt_" + viceName)) {
                var rekt_bits = tag.split(":") as string[];
                if (rekt_bits.length != 4) {
                   logger.logWarning("discarding invalid player tag for " + viceName);
                   player.removeTag(tag);
                }
                return rekt_bits;
            }
        }
        return [];
    }

    function addTag(player as IPlayer, duration as long, start as long, count as int) {
        var tag_tho = "ttmb_rekt_" + viceName + ":" + duration as string + ":" + start as string + ":" + count as string;
        player.addTag(tag_tho);
        logger.logInfo(player.name + " added tag " + tag_tho);
    }

    function removeTag(player as IPlayer, duration as long, start as long, count as int) {
        var tag_tho = "ttmb_rekt_" + viceName + ":" + duration as string + ":" + start as string + ":" + count as string;
        player.removeTag(tag_tho);
        logger.logInfo(player.name + " removed tag " + tag_tho);
    }

    function tagDuration(rekt_tag as string[]) as long {
        return rekt_tag[1] as long;
    }

    function tagStart(rekt_tag as string[]) as long {
        return rekt_tag[2] as long;
    }

    function tagLevel(rekt_tag as string[]) as int {
        return rekt_tag[3] as int;
    }

    function ourVice(consumable as IItemStack) as bool {
        for viceConsumable in viceConsumables {
            if ( viceConsumable.name == consumable.name ) {
               return true;
            }
        }
        return false;
    }

    function levelEffects(p_level as int) as ttmbViceEffect[] {
        var level = p_level as int;
        var deez_effects = [] as ttmbViceEffect[];
        for effect in viceEffects {
            logger.logInfo("Checking " + effect.name + " level " + level as string + " (" + effect.min_level as string + ":" + effect.max_level as string + ")");
            if (level >= effect.min_level && level <= effect.max_level) {
               deez_effects += effect;
            }
        }
        return deez_effects;
    }

    function addEffect(effect as ttmbViceEffect) as void {
        viceEffects += effect;
        logger.logInfo(viceName + " has new effect " + effect.name + ", " + effect.min_level as string + "-" + effect.max_level as string);
    }

    function foodEatenHandler(event as FoodEatenEvent) as void {
        if ( event.player.world.isRemote() ) {
           // basically none of this state exists in a authoritative way on the client
           return;
        }
        if ( ! ourVice(event.food) ) {
           logger.logInfo(event.food.name + " is not recognized by " + viceName);
           return;
        }
        var now = event.player.world.getWorldInfo().worldTotalTime as long;
        var rekt_level = 1 as int;
        var rekt_start = 0 as long;
        var rekt_duration = 0 as long;
        var rekt_tag_bits = this.getTag(event.player);
        if ( rekt_tag_bits.length == 0 ) {
           rekt_start = now;
        } else {
           rekt_level = tagLevel(rekt_tag_bits);
           rekt_start = tagStart(rekt_tag_bits);
           rekt_duration = tagDuration(rekt_tag_bits);
        }
        var my_effects = levelEffects(rekt_level);
        logger.logInfo(event.player.name + " gettin' rekt on " + viceName + " starting " + (now - rekt_start) + " ticks ago, level " + rekt_level as string + " w/ " + my_effects.length as string + " effects");
        if ( my_effects.length > 0 ) {
            event.player.clearActivePotions();
        }
        for effect in my_effects {
            logger.logInfo("math for " + effect.name + " " + viceDuration as string + ", " + rekt_level as string + "," + effect.duration_multiplier as string);
            // Always try to have the right hand side the larger data type. A ZS quirk
            var this_duration = (effect.duration_multiplier * (viceDuration * rekt_level)) as long;
            var this_effect = effect.potion.makePotionEffect(this_duration, effect.effect_multiplier);
            if (this_duration > rekt_duration) {
                rekt_duration = this_duration;
            }
            event.player.addPotionEffect(this_effect);
            logger.logInfo(event.player.name + " gained new effect " + effect.name + " for " + this_duration as string + " ticks");
        }
        if ( my_effects.length > 0 ) {
            if ( rekt_tag_bits.length > 0 ) {
                removeTag(event.player, tagDuration(rekt_tag_bits), rekt_start, rekt_level);
            }
            addTag(event.player, rekt_duration, rekt_start, rekt_level + 1);
        }
    }

    function playerTickHandler(event as PlayerTickEvent) as void {
        if ( event.player.world.isRemote() ) {
           // basically none of this state exists in a authoritative way on the client
           return;
        }
        var now = event.player.world.getWorldInfo().worldTotalTime as long;
        var rekt_tag_bits = this.getTag(event.player);
        if (rekt_tag_bits.length == 0) {
           return;
        }
        var rekt_start = tagStart(rekt_tag_bits);
        var rekt_duration = tagDuration(rekt_tag_bits);
        var rekt_delta = ( now - rekt_start ) as long;
        if (rekt_delta >= rekt_duration) {
            logger.logInfo(event.player.name + " no longer rekt on " + viceName + " after " + rekt_duration as string + " ticks");
            removeTag(event.player, rekt_duration, rekt_start, tagLevel(rekt_tag_bits));
        } else {
            logger.logInfo(event.player.name + " rekt on " + viceName + " for another " + (rekt_duration - rekt_delta) as string + " ticks");
        }
    }

    function playerRespawnHandler(event as PlayerRespawnEvent) as void {
        if ( event.player.world.isRemote() ) {
           // basically none of this state exists in a authoritative way on the client
           return;
        }
        var rekt_tag_bits = this.getTag(event.player);
        if (rekt_tag_bits.length == 0) {
           return;
        }
        // that's one way to sober up
        removeTag(event.player, tagDuration(rekt_tag_bits), tagStart(rekt_tag_bits), tagLevel(rekt_tag_bits));
    }
}

var effectBuzzedStrength = ttmbViceEffect("buzzed_strength", 1, 2, <potion:minecraft:strength>, 1.0);
var effectBuzzedLuck = ttmbViceEffect("buzzed_luck", 1, 1, <potion:minecraft:luck>, 0.5);
var effectDrunkSlow = ttmbViceEffect("drunk_slow", 2, 5, <potion:minecraft:slowness>, 1.0);
var effectDrunkStumble = ttmbViceEffect("drunk_stumble", 3, 5, <potion:potioncore:perplexity>, 0.5);
var effectDrunkBlackout = ttmbViceEffect("drunk_blackout", 4, 5, <potion:minecraft:blindness>, 1.0);
var effectAlcoholPoisoning = ttmbViceEffect("ded_drunk", 5, 5, <potion:minecraft:instant_damage>, 1.0);
effectAlcoholPoisoning.effectMultiplier(10);

var genericBooze = ttmbVice("booze_tho", genericConsumables, 1200);
genericBooze.addEffect(effectBuzzedStrength);
genericBooze.addEffect(effectBuzzedLuck);
genericBooze.addEffect(effectDrunkSlow);
genericBooze.addEffect(effectDrunkStumble);
genericBooze.addEffect(effectDrunkBlackout);
genericBooze.addEffect(effectAlcoholPoisoning);
