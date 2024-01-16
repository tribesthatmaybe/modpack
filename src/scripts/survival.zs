// allow conversion of waters
// from https://github.com/McJtyMods/AquaMunda/issues/10#issuecomment-397499883
recipes.addShapeless(<toughasnails:canteen:2>, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<toughasnails:canteen:*>]);
recipes.addShapeless(<toughasnails:purified_water_bottle>*3, [<forge:bucketfilled>.withTag({FluidName: "purified_water", Amount: 1000}),<minecraft:glass_bottle>,<minecraft:glass_bottle>,<minecraft:glass_bottle>]);
recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShaped(<harvestcraft:freshwateritem> * 8, [[null, null, null],
						       [null, <ore:listAllWater>, null],
						       [null, null, null]]);

// grilling is a matter of survival
mods.cfm.Grill.addRecipe(<minecraft:cooked_chicken>,<minecraft:chicken>);
mods.cfm.Grill.addRecipe(<minecraft:cooked_porkchop>,<minecraft:porkchop>);
mods.cfm.Grill.addRecipe(<minecraft:salmon>,<minecraft:fish:1>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofurkeyitem>,<harvestcraft:rawtofurkeyitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofaconitem>,<harvestcraft:rawtofaconitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofabbititem>,<harvestcraft:rawtofabbititem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofeakitem>,<harvestcraft:rawtofeakitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:cookedtofishitem>,<harvestcraft:rawtofishitem>);
mods.cfm.Grill.addRecipe(<harvestcraft:shrimpcookeditem>,<harvestcraft:shrimprawitem>);
mods.cfm.Grill.addRecipe(<fossil:allosaurus_cooked>,<fossil:allosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:ankylosaurus_cooked>,<fossil:ankylosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:arthropleura_cooked>,<fossil:arthropleura_meat>);
mods.cfm.Grill.addRecipe(<fossil:triceratops_cooked>,<fossil:triceratops_meat>);
mods.cfm.Grill.addRecipe(<fossil:brachiosaurus_cooked>,<fossil:brachiosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:ceratosaurus_cooked>,<fossil:ceratosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:citipati_cooked>,<fossil:citipati_meat>);
mods.cfm.Grill.addRecipe(<fossil:compsognathus_cooked>,<fossil:compsognathus_meat>);
mods.cfm.Grill.addRecipe(<fossil:confuciusornis_cooked>,<fossil:confuciusornis_meat>);
mods.cfm.Grill.addRecipe(<fossil:crassigyrinus_cooked>,<fossil:crassigyrinus_meat>);
mods.cfm.Grill.addRecipe(<fossil:deinonychus_cooked>,<fossil:deinonychus_meat>);
mods.cfm.Grill.addRecipe(<fossil:dilophosaurus_cooked>,<fossil:dilophosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:diplocaulus_cooked>,<fossil:diplocaulus_meat>);
mods.cfm.Grill.addRecipe(<fossil:diplodocus_cooked>,<fossil:diplodocus_meat>);
mods.cfm.Grill.addRecipe(<fossil:dodo_cooked>,<fossil:dodo_meat>);
mods.cfm.Grill.addRecipe(<fossil:dryosaurus_cooked>,<fossil:dryosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:edaphosaurus_cooked>,<fossil:edaphosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:elasmotherium_cooked>,<fossil:elasmotherium_meat>);
mods.cfm.Grill.addRecipe(<fossil:gallimimus_cooked>,<fossil:gallimimus_meat>);
mods.cfm.Grill.addRecipe(<fossil:gastornis_cooked>,<fossil:gastornis_meat>);
mods.cfm.Grill.addRecipe(<fossil:henodus_cooked>,<fossil:henodus_meat>);
mods.cfm.Grill.addRecipe(<fossil:icthyosaurus_cooked>,<fossil:icthyosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:kelenken_cooked>,<fossil:kelenken_meat>);
mods.cfm.Grill.addRecipe(<fossil:liopleurodon_cooked>,<fossil:liopleurodon_meat>);
mods.cfm.Grill.addRecipe(<fossil:mammoth_cooked>,<fossil:mammoth_meat>);
mods.cfm.Grill.addRecipe(<fossil:megalania_cooked>,<fossil:megalania_meat>);
mods.cfm.Grill.addRecipe(<fossil:megaloceros_cooked>,<fossil:megaloceros_meat>);
mods.cfm.Grill.addRecipe(<fossil:meganeura_cooked>,<fossil:meganeura_meat>);
mods.cfm.Grill.addRecipe(<fossil:mosasaurus_cooked>,<fossil:mosasaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:ornitholestes_cooked>,<fossil:ornitholestes_meat>);
mods.cfm.Grill.addRecipe(<fossil:pachycephalosaurus_cooked>,<fossil:pachycephalosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:parasaurolophus_cooked>,<fossil:parasaurolophus_meat>);
mods.cfm.Grill.addRecipe(<fossil:phorusrhacos_cooked>,<fossil:phorusrhacos_meat>);
mods.cfm.Grill.addRecipe(<fossil:platybelodon_cooked>,<fossil:platybelodon_meat>);
mods.cfm.Grill.addRecipe(<fossil:plesiosaur_cooked>,<fossil:plesiosaur_meat>);
mods.cfm.Grill.addRecipe(<fossil:pterosaur_cooked>,<fossil:pterosaur_meat>);
mods.cfm.Grill.addRecipe(<fossil:quagga_cooked>,<fossil:quagga_meat>);
mods.cfm.Grill.addRecipe(<fossil:sarcosuchus_cooked>,<fossil:sarcosuchus_meat>);
mods.cfm.Grill.addRecipe(<fossil:smilodon_cooked>,<fossil:smilodon_meat>);
mods.cfm.Grill.addRecipe(<fossil:spinosaurus_cooked>,<fossil:spinosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:stegosaurus_cooked>,<fossil:stegosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:therizinosaurus_cooked>,<fossil:therizinosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:tiktaalik_cooked>,<fossil:tiktaalik_meat>);
mods.cfm.Grill.addRecipe(<fossil:titanis_cooked>,<fossil:titanis_meat>);
mods.cfm.Grill.addRecipe(<fossil:triceratops_cooked>,<fossil:triceratops_meat>);
mods.cfm.Grill.addRecipe(<fossil:tyrannosaurus_cooked>,<fossil:tyrannosaurus_meat>);
mods.cfm.Grill.addRecipe(<fossil:velociraptor_cooked>,<fossil:velociraptor_meat>);

// magic bean based economy
recipes.removeShaped(<cyclicmagic:sprout_seed>);

## seeds, prosperity shard, prudentium
## TODO : figure out how to make this take xp
recipes.addShapeless(<cyclicmagic:sprout_seed>, [<appliedenergistics2:material:10>,<minecraft:wheat_seeds>,<quark:rune>,
						<mysticalagriculture:crafting:1>,<mysticalagriculture:crafting:5>,
						<mysticalagriculture:crafting:1>,<quark:rune:15>,<minecraft:wheat_seeds>,
						<appliedenergistics2:material:11>]);
