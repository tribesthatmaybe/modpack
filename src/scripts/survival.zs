// allow conversion of waters
// from https://github.com/McJtyMods/AquaMunda/issues/10#issuecomment-397499883
recipes.addShapeless(<toughasnails:canteen:2>, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<toughasnails:canteen:*>]);
recipes.addShapeless(<toughasnails:purified_water_bottle>*3, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<minecraft:glass_bottle>,<minecraft:glass_bottle>,<minecraft:glass_bottle>]);

// grilling is a matter of survival
mods.cfm.Grill.addRecipe(<minecraft:cooked_chicken>,<minecraft:chicken>);
mods.cfm.Grill.addRecipe(<minecraft:cooked_porkchop>,<minecraft:porkchop>);
mods.cfm.Grill.addRecipe(<minecraft:salmon>,<minecraft:fish:1>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofurkeyitem>,<harvestcraft:rawtofurkeyitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofaconitem>,<harvestcraft:rawtofaconitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofabbititem>,<harvestcraft:rawtofabbititem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofeakitem>,<harvestcraft:rawtofeakitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofishitem>,<harvestcraft:rawtofishitem>);
