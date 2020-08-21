# Lore

Tribes That May Be includes the [lore expansion](https://www.curseforge.com/minecraft/mc-mods/lore-expansion) mod as a means of easily embeding narrative, gameplay, and fourth wall breaking text content. The JSON files used by this mode may be generated as part of the build by the [loregen](https://github.com/tribesthatmaybe/modpack/blob/mainline/scripts/loregen.py) script. There is also support for raw/unmodified JSON based lore files as well. Because it's relatively likely that players will pick up duplicate bits of lore in their adventures, extra lore may be converted to paper with a shapeless 1:1 crafting recipe.

# TTMB Lore Format

The [`lore`](https://github.com/tribesthatmaybe/modpack/tree/mainline/lore) directory contains multiple folders most of which contain a mix of YML and plain text files. The only exception to this is the [`static`](https://github.com/tribesthatmaybe/modpack/tree/mainline/lore/static) folder which has raw JSON.

The TTMB Lore Format consists of a [`YAML`](https://yaml.org/) with an optional plain text file for longer bits of lore. These files areorganized in directories but note that the _actual_ in game organization is determined based on what is in the YAML file. For all non-static lore files a separate [Recurrent Complex](https://www.curseforge.com/minecraft/mc-mods/recurrent-complex) [inventory generator](https://minecraft-recurrent-complex.fandom.com/wiki/Inventory_Generator) will be generated as well. This allows for easy embedding of discoverable lore within inventory containers in discoverable structures.

The minimum amount of information for a piece of lore is the title, a category, and text.

```yaml
---
title: "My Lore"
category: "My Category"
text: "This is my lore. There is many like it but this one is mine."
```

You can use multi-line strings in YAML for longer bits.

```yaml
---
title: "My Slightly Longer Lore"
category: "My Category"
text: |
  This is my lore. There is many like it but this one is mine.
  This is still my lore.
```

Because multi line strings of YAML are kinda annoying you can also reference an external text file.

```yaml
---
title: "My Even Longer Lore
category: "My Category"
source: "
```

```text
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
```
