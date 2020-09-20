// some things we tweak bc narratives are important
import crafttweaker.game.IGame;

<weather2:sand_layer_placeable>.displayName = "Playa Dust";
//resource-loaded works but this doesn't? odd
//game.setLocalization("item.weather2.sand_layer_placeable.name", "Playa Dust");
//game.setLocalization("tile.weather2.sand_layer.name", "Playa Dust");

// c'mon now it's 2020
<storagedrawers:controllerslave>.displayName = "Drawer Interface";

// hard to find dirt in the desert y'know
recipes.addShaped(<minecraft:dirt> * 4, [[<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>],[<minecraft:rotten_flesh>, <ore:logWood>, <minecraft:rotten_flesh>], [<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>]]);

// hard to find hops too
recipes.addShaped(<brewcraft:hopsseeditem>, [[<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>],[<mysticalagriculture:nature_essence>, <mysticalagriculture:crafting:18>, <mysticalagriculture:nature_essence>], [<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>]]);
