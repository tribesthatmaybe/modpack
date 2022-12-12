# NPCs

The CustomNPCs mod is quite expansive but the documentation is kinda all over the place. This document provides information on working with NPCs, along with high level information on the NPC's contained within the modpack.

# Factions (Tribes)

Factions are how tribes within the modpack are represented. We will be using the term Faction as that is what the customnpcs mod uses. All NPC factions may be attacked by mobs except for locals. We refer to the internal points system that Custom NPCS uses as Faction Points (FP).

| ID | Name | Base Aggro | Min Neutral FP | Max Neutral FP | Default FP |
| ---- | ---------- | -------------- | -------------- | ---------- |
| 0 | Reverse Carnies | Friendly | 2000 | 3000 | 2100 |
| 3 | Cabaret Kids | Friendly | 100 | 400 | 300 |
| 4 | Locals | Friendly | 300 | 1000 | 800 |
| 6 | Footprinters | Hostile | 500 | 2000 | 250 |

## Aggro

Not every tribe will aggro each other. This chart indicates which tribes will aggro other tribes.

| Reverse Carnies | Cabaret Kids | Locals | Footprinters |
| --------------- | ------------ | ------ | ------------ |
| Reverse Carnies | | | X |
| Cabaret Kids | | | X |
| Locals | | | X |
| Footprinters | X | X | X |

# Clones

There are a bunch of NPC clones included in the modpack. They are loosely grouped by relatvistic usefullness.

When interacting with clones via the NPC Cloner tool, remember that the built in clones are all stored on the Server side.

| Tab | NPCs |
| 1 | Semi-ambient Party Kids and Reverse Carnies |
| 2 | Merchants |
| 3 | Aggro NPCs |
| 4 | Quest Related |
| 5 | Support NPCs |

## Cabaret Kids

Mostly harmless. They tend to be everywhere. Some of them may want to trade or help you find things.

* Brad, Chad, Kara, Karen are just party kids. They show up in a variety of naturally spawning structures.

## Support NPCs

Various kinds of helper NPCs who may be encountered in the desert.

* She goes by various names but always answers to Aura. She is a traveller who hangs around in certain areas doing what she can to keep people safe.

## Reverse Carnies

They may be found all throughout the desert building and fixing things, and helping to support the various communities out there.

* Third Year Joe hasn't been in the Block Rock Desert as long as he thinks. Chill Reverse Carnie who can be found in villages and in the middle of nowhere. [Skin credit](https://minecraftskins.com/skin/14784730/punk-in-leather-jacket/).
* Badger rolls around with a shotgun and and attitude. [Skin credit](https://www.minecraftskins.com/skin/11823815/pyro-roadie/).

## Merchants

* The Tumbleweed Farmer is a Traveller who has been out in the desert for a long time. He will sell you things the Reverse Carinies would consider to be matter out of place. [Skin credit](https://www.minecraftskins.com/skin/13742380/old-desert-man/).
* Arnold runs a industry focused shop which can show up in villages and work camps.
* Honf is a wandering merchant who likes oranges and will trade for assorted supplies.
* Sunshine is a purveyor of supplies and vices who shows up in villages. [Skin Credit](https://www.minecraftskins.com/skin/10391865/hippy/).
* `Vanessa` is a seed merchant who shows up in villages. [Skin credit](https://www.minecraftskins.com/skin/14948009/vanessa--the-merchant--ce-/).


## Antagonists

* Jonesey is the anti-Badger. [Skin credit](https://www.minecraftskins.com/skin/14860588/marines-desert-marpat-rolled-sleeves--fixed-/).
* Daniel is a undead footprinter. [Skin credit](https://www.minecraftskins.com/skin/3162587/undead-steve/)
