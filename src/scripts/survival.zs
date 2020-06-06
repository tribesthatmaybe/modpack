// allow conversion of waters
// from https://github.com/McJtyMods/AquaMunda/issues/10#issuecomment-397499883
recipes.addShapeless(<toughasnails:canteen:2>, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<toughasnails:canteen:*>]);
recipes.addShapeless(<toughasnails:purified_water_bottle>*3, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<minecraft:glass_bottle>,<minecraft:glass_bottle>,<minecraft:glass_bottle>]);
