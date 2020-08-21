// some things we tweak bc narratives are important
import crafttweaker.game.IGame;

<weather2:sand_layer_placeable>.displayName = "Playa Dust";
//resource-loaded works but this doesn't? odd
//game.setLocalization("item.weather2.sand_layer_placeable.name", "Playa Dust");
//game.setLocalization("tile.weather2.sand_layer.name", "Playa Dust");

// hard to find dirt in the desert y'know
recipes.addShaped(<minecraft:dirt> * 4, [[<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>],[<minecraft:rotten_flesh>, <ore:logWood>, <minecraft:rotten_flesh>], [<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>]]);

