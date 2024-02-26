#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ResourceLocation;

var trinketGold = VanillaFactory.createItem("gold_trinket");
trinketGold.maxStackSize = 8;
trinketGold.rarity = "common";
trinketGold.textureLocation = mods.contenttweaker.ResourceLocation.create("contenttweaker:textures/items/gold_trinket.png");
trinketGold.register();

var gas_cartridge = VanillaFactory.createItem("gas_cartridge");
gas_cartridge.maxStackSize = 64;
gas_cartridge.rarity = "common";
gas_cartridge.textureLocation = mods.contenttweaker.ResourceLocation.create("contenttweaker:textures/items/gas_cartridge.png");
gas_cartridge.register();

var gas_cartridge_plate = VanillaFactory.createItem("gas_cartridge_plate");
gas_cartridge_plate.maxStackSize = 1;
gas_cartridge_plate.rarity = "common";
gas_cartridge_plate.textureLocation = mods.contenttweaker.ResourceLocation.create("contenttweaker:textures/items/gas_cartridge_plate.png");
gas_cartridge_plate.register();
