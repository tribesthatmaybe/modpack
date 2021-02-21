// weather2:sand_layer_placeable
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.event.PlayerRightClickItemEvent;

var range = 3;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
        if ( event.player.world.isRemote() ) {
           return;
        }
        logger.logInfo("using a " + event.item.name);
        if ( event.item.name != "item.actuallyadditions.item_leaf_blower" && event.item.name != "item.actuallyadditions.item_leaf_blower_advanced" ) {
           logger.logInfo("invalid item?");
           return;
        }
        var player_x = event.player.x;
        var player_y = event.player.y;
        var player_z = event.player.z;
        var max_x = player_x + range;
        var min_x = player_x - range;
        var max_z = player_z + range;
        var min_z = player_z - range;
        var max_y = player_y + range + 1;
        var min_y = player_y - 1;
        var actual_x = min_x;
        var actual_y = min_y;
        var actual_z = min_z;
        while (actual_x <= max_x) {
            while (actual_z <= max_z) {
                while (actual_y <= max_y) {
                    var a_blockpos = crafttweaker.util.Position3f.create(actual_x, actual_y, actual_z).asBlockPos();
                    logger.logInfo("scanning " + actual_x + "," + actual_y + "," + actual_z);
                    if (! event.world.isAirBlock(a_blockpos)) {
                        var a_block = event.world.getBlock(a_blockpos);
                        logger.logInfo("found some " + a_block.definition.unlocalizedName + " at " + actual_x + "," + actual_y + "," + actual_z);
                        if ( a_block.definition.unlocalizedName == "tile.weather2.sand_layer" ) {

                           event.world.setBlockState(<blockstate:minecraft:air>, a_blockpos);
                           var p_cmd = "particle blockcrack " + actual_x + " " + actual_y + " " + actual_z + " 3 3 3 20 500 normal @a 12";
                           server.commandManager.executeCommand(server, p_cmd);
                        }
                    }
                    actual_y += 1;
                }
                actual_y = min_y;
                actual_z += 1;
            }
            actual_z = min_z;
            actual_x += 1;
        }
});