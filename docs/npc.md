# NPCs

The CustomNPCs mod is quite expansive but the documentation is kinda all over the place. This document provides information on working with NPCs, along with high level information on the NPC's contained within the modpack.

# Factions (Tribes)

Factions are how tribes within the modpack are represented. We will be using the term Faction as that is what the customnpcs mod uses. All NPC factions may be attacked by mobs except for locals. We refer to the internal points system that Custom NPCS uses as Faction Points (FP).

| Name | Base Aggro | Min Neutral FP | Max Neutral FP | Default FP |
| ---- | ---------- | -------------- | -------------- | ---------- |
| Reverse Carnies | Friendly | 2000 | 3000 | 3100 |
| Cabaret Kids | Friendly | 100 | 900 | 300 |
| Locals | Neutral | 1000 | 2000 | 1100 |
| Travellers | Neutral | 500 | 1500 | 1000 |
| Footprinters | Hostile | 500 | 2000 | 400 |
| Come From Aways | Hostile | 1000 | 2000 | 0 |

## Aggro

Not every tribe will aggro each other. This chart indicates which tribes will aggro other tribes.

|   | Reverse Carnies | Cabaret Kids | Locals | Travellers | Footprinters | Come From Aways |
| - | --------------- | ------------ | ------ | ---------- | ------------ | --------------- |
| Reverse Carnies | | | | | | X |
| Cabaret Kids | | | | | | X |
| Locals | | | | | | |
| Travellers |  | | | X | X |
| Footprinters | | X | | X | | |
| Come From Aways | X | X | | X | | |

# Clones

There are a bunch of NPC clones included in the modpack. They are loosely grouped by relatvistic usefullness.

When interacting with clones via the NPC Cloner tool, remember that the built in clones are all stored on the Server side.

## Assorted

These clones are kinda a grab bag of miscreants, hippies, and long lost punks.

* The Party Kids Brad, Chad, Kara, Karen are just party kids. They show up with the `test_party_kids` struccture.
* The Tumbleweed Farmer is a Traveller who has been out in the desert for a long time. He will sell you things the Reverse Carinies would consider to be matter out of place.
