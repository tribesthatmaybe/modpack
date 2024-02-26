import crafttweaker.item.IItemStack;

//// railcraft - chooooo choo bitches
recipes.removeShaped(<minecraft:rail> * 24, [[<mekanism:ingot:1>, null, <mekanism:ingot:1>],
				             [<mekanism:ingot:1>, <minecraft:stick>, <mekanism:ingot:1>],
					     [<mekanism:ingot:1>, null, <mekanism:ingot:1>]]);
// basic rail
mods.mekanism.compressor.addRecipe(<immersiveengineering:material:1>, <gas:oxygen>, <railcraft:rail>);
// fancy rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods>, <gas:ethene>, <railcraft:rail:1>);
// high speed rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods:6>, <gas:hydrogenchloride>, <railcraft:rail:3>);
// reinforced rail
mods.mekanism.compressor.addRecipe(<immersiveengineering:material:2>, <gas:ethene>, <railcraft:rail:4>);
// electric rail
mods.mekanism.compressor.addRecipe(<immersiveposts:metal_rods:1>, <gas:hydrogenchloride>, <railcraft:rail:5>);
// wooden ties
recipes.remove(<railcraft:tie>);
scripts.shared.recipeRemapShaped(<railcraft:tie> * 3,  [[null, null, null],
						    [null, <aeadditions:pattern.fluid>.withTag({Fluid: {FluidName: "creosote", Amount: 1000}}) |
						   	   <railcraft:fluid_bottle_creosote> |
							   <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), null],
						    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);

mods.mekanism.reaction.addRecipe(<ore:slabWood>, <liquid:creosote> * 2500, <gas:water> * 1000, <railcraft:tie> * 5, <gas:water> * 200, 2000, 300);


// carts
scripts.shared.recipeRemapShaped(<minecraft:minecart>, [[null, null, null],
						        [<immersiveengineering:metal:39>, null, <immersiveengineering:metal:39>],
							[<tconstruct:pan_head>.withTag({Material: "iron"}), <immersiveengineering:metal:39>, <tconstruct:pan_head>.withTag({Material: "iron"})]]);
scripts.shared.recipeRemapShaped(<minecraft:minecart> * 2, [[null, null, null],
						            [<immersiveengineering:metal:38>, <mysticalagriculture:crafting>, <immersiveengineering:metal:38>],
							    [<tconstruct:pan_head>.withTag({Material: "iron"}), <immersiveengineering:metal:38>, <tconstruct:pan_head>.withTag({Material: "iron"})]]);
scripts.shared.recipeRemapShaped(<railcraft:cart_redstone_flux>, [[null, null, null],
								  [<mekanism:enrichedalloy>, <immersiveengineering:metal_device0>, <mekanism:enrichedalloy>],
								  [<tconstruct:tough_binding>.withTag({Material: "steel"}), <minecraft:minecart>, <tconstruct:tough_binding>.withTag({Material: "steel"})]]);

// locomotive
// only remove actual recipe?
scripts.shared.recipeRemapShaped(<railcraft:bore>, [[null, null, null],
						    [<storagedrawers:upgrade_storage:1>, <actuallyadditions:item_misc:8>, <mekanism:reinforcedalloy>],
						    [<minecraft:chest_minecart>, <railcraft:locomotive_steam_solid>, <vehicle:large_engine:2>]]);
scripts.shared.recipeRemapShaped(<railcraft:borehead_bronze>, [[<railcraft:plate:6>, <railcraft:plate:6>, <railcraft:plate:6>],
							       [<railcraft:plate:6>, <immersiveengineering:drillhead:1>, <railcraft:plate:6>],
							       [<railcraft:plate:6>, <railcraft:plate:6>, <railcraft:plate:6>]]);
scripts.shared.recipeRemapShaped(<railcraft:borehead_diamond>, [[<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>],
							        [<actuallyadditions:item_crystal:2>, <immersiveengineering:drillhead>, <actuallyadditions:item_crystal:2>],
								[<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>]]);
scripts.shared.recipeRemapShaped(<railcraft:borehead_steel>, [[<immersiveengineering:metal:38>, <immersiveengineering:metal:39>, <immersiveengineering:metal:38>],
							      [<immersiveengineering:metal:39>, <immersiveengineering:drillhead>, <immersiveengineering:metal:39>],
							      [<immersiveengineering:metal:38>, <immersiveengineering:metal:39>, <immersiveengineering:metal:38>]]);
scripts.shared.recipeRemapShaped(<railcraft:borehead_iron>, [[<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>],
							     [<immersiveengineering:metal:39>, <immersiveengineering:drillhead:1>, <immersiveengineering:metal:39>],
							     [<immersiveengineering:metal:39>, <immersiveengineering:metal:39>, <immersiveengineering:metal:39>]]);
