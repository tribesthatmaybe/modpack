# Ore Configuration

Ore is placed in the world with the [geolosys](https://docs.geolosys.com/en/latest/) mod. This results in veins of ore showing up less frequently but in larger abundance than normal distribution. In early game you can find these veins by looking for surface deposits. Mid game you can use the surface deposits combined with a prospectors pick.

In order for this to work properly we disable the generation ore in a variety of mods.

* With [mystical agriculture](https://www.curseforge.com/minecraft/mc-mods/mystical-agriculture) this is a matter of setting `generate_end`, `generate_nether`, and `generat_regular` to `false`
* For [immersive engineering](https://www.curseforge.com/minecraft/mc-mods/immersive-engineering) the `oreDimBlacklist` doesn't seem to work as expected so we also need to set the vein size to `0` for ever ore individually.
* [mekanism](https://www.curseforge.com/minecraft/mc-mods/mekanism) needs the `fooPerChunk` `general` settings set to `0`. This will cause mekanism to stop generating copper tin, etc on it's own.

# Ore Distribution

Got tired of remembering how the [geolosys config](https://github.com/tribesthatmaybe/modpack/blob/mainline/src/config/geolosys.json) is actually setup so tracking ore distribution in this doc too. Yaye two places to update I guess?

These values apply across all dimensions except The End and The Nether.

## Copper

Copper uncommonly shows up in large deposits of malachite and is mixed with Inferium ore. The surface deposit is malachite. Copper also commonly shows up in large deposits of Azurite and is also mixed with Inferium ore. The surface deposit is Azurite.

## Coal

Coal is very common and shows up in very large deposits and is mixed with Inferium. The surface deposit is coal.

## Redstone

Redstone is uncommon shows up in medium deposits of cinnabar. The surface deposit is cinnabar.

## Gold

Gold is rare and and shows up in medium deposits mixed with Prosperity ore. The surface deposit is gold.

## Lapis Lazuli

Lapis Lazuli is uncommon and shows up in small deposits. The surface deposit is lapis lazuli.

## Assorted Quartz

This quartz deposit is uncommon and shows up in large deposits mixed with Prosperity ore. The surface deposit is quartz.

## Diamond

Diamonds are rare and show up in small deposits of kimberlite. The surface deposit is kimberlite.

## Emeralds

Emeralds are rare and show up in small deposits of beryl. The surface deposit is beryl.

## Iron

Iron may be uncommonly found in medium hematite deposits mixed with Inferium ore. The surface deposit is hematite. It may also be commonly found in large limonite deposits with a surface deposit of limonite, although there is less of a yield.

## Tin

Tin is commonly found in medium sized deposits of cassiterite. The surface deposit is cassiterite. Tin may also occasionally show up as part of processing teallite.

## Lead

Lead is uncommonly found as part of teallite deposits. The surface deposit is teallite. Lead also my be found as part of galena deposits with a surface deposit of galena.

## Silver

Silver is often shows up as part of processing galena.

## Aluminum

Aluminum shows up rarely as part of large bauxite deposits with a surface deposit of bauxite.

## Platinum

Shows up rarely as part of platiunum deposits but there is no use yet so YOLO.

## Osmium

Shows up rearely as part of medium sized platinum deposits.

## Uranium

Shows up rarely as part of autunite but is not used yet.

## Zinc

Zinc shows up rarely as part of sphalerite in medium deposits.

# JER Profiling

When modifying the way the modpack distributes resources you should re-run the Just Enough Resources profiling. This is a process fraught with woe as it tends to crash the server. Definitely only do this on a single player world. Even then sometimes seeds will not be compatible with this and will need to be regenerated before profiling can be completed.
