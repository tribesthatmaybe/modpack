import crafttweaker.item.IItemStack;
//// instant community generated teleportation is hard

// parts
recipes.remove(<waystones:warp_stone>);
mods.botania.RuneAltar.addRecipe(<waystones:warp_stone>, [<actuallyadditions:item_crystal_empowered>, <mysticalagriculture:crafting:2>, <actuallyadditions:item_crystal_empowered:1>,
					  <mysticalagriculture:crafting:2>, <botania:manaresource:8>, <mysticalagriculture:crafting:2>, <actuallyadditions:item_crystal_empowered:1>,
					  <mysticalagriculture:crafting:2>, <actuallyadditions:item_crystal_empowered>], 50000);
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore>, [[<mekanism:reinforcedplasticblock:6>, <mekanism:atomicalloy>, <mekanism:reinforcedplasticblock:6>],
						 [<mekanism:reinforcedplasticblock:6>, <waystones:warp_stone>, <mekanism:reinforcedplasticblock:6>],
						 [<mekanism:controlcircuit:3>, <actuallyadditions:block_misc:8>, <mekanism:controlcircuit:3>]]);

// handhelds
recipes.remove(<mekanism:portableteleporter>);
recipes.addShaped(<mekanism:portableteleporter>, [[<projectred-core:resource_item:104>, <openscreens:backflatscreen1>, <projectred-core:resource_item:104>],
						  [<mekanism:controlcircuit:3>, <mekanism:teleportationcore>, <mekanism:compressedobsidian>],
						  [<mekanism:plasticblock:7>, <actuallyadditions:item_battery_triple>, <mekanism:compressedobsidian>]]);
recipes.remove(<actuallyadditions:item_tele_staff>);
mods.botania.RuneAltar.addRecipe(<actuallyadditions:item_tele_staff>, [<actuallyadditions:item_crystal_empowered:2>, <waystones:warp_stone>, <tconstruct:binding>.withTag({Material: "livingwood"}),
								      <tconstruct:tough_tool_rod>, <actuallyadditions:item_crystal_empowered:5>, null, <botania:rune:8>], 15000);

recipes.remove(<waystones:warp_scroll>);
mods.botania.RuneAltar.addRecipe(<waystones:warp_scroll>, [<botania:manaresource:16>, <minecraft:paper>, <botania:manaresource:16>, <minecraft:paper>, <waystones:warp_stone>,
							  <minecraft:paper>, <botania:rune:4>], 3000);
recipes.remove(<waystones:return_scroll>);
mods.botania.RuneAltar.addRecipe(<waystones:return_scroll>, [<botania:manaresource:16>, <minecraft:paper>, <botania:manaresource:16>, <minecraft:paper>, <botania:manaresource:8>,
							     <minecraft:paper>, <botania:rune:4>], 3000);
recipes.remove(<waystones:bound_scroll>);
mods.botania.RuneAltar.addRecipe(<waystones:bound_scroll>, [<botania:manaresource:16>, <minecraft:paper>, <botania:manaresource:16>, <minecraft:paper>, <botania:manaresource:8>,
							     <minecraft:paper>, <botania:rune:9>], 3000);
recipes.remove(<bountifulbaubles:magicmirror>);
mods.botania.RuneAltar.addRecipe(<bountifulbaubles:magicmirror>, [<cfm:mirror>, <bountifulbaubles:spectralsilt>, <waystones:warp_stone>, <bountifulbaubles:spectralsilt>,
								 <mekanism:glowplasticblock:15>], 5000);
recipes.remove(<bountifulbaubles:wormholemirror>);
mods.botania.RuneAltar.addRecipe(<bountifulbaubles:wormholemirror>, [<botania:rune:14>, <appliedenergistics2:material:46>, <bountifulbaubles:magicmirror>, <appliedenergistics2:material:46>,
								    <mekanism:reinforcedplasticblock:5>], 500);

// consumables
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <waystones:warp_stone>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:thick"}), <waystones:warp_stone>, <bountifulbaubles:potionrecall>);
brewing.removeRecipe(<bountifulbaubles:potionrecall>, <appliedenergistics2:material:46>);
brewing.removeRecipe(<bountifulbaubles:potionrecall>, <minecraft:quartz>);
brewing.addBrew(<bountifulbaubles:potionrecall>, <appliedenergistics2:material:46>, <bountifulbaubles:potionwormhole>);

// stationary
recipes.remove(<waystones:waystone>);
recipes.addShaped(<waystones:waystone>, [[null, <botania:livingrock:4>, null],
					 [<actuallyadditions:item_crystal_empowered:3>, <waystones:warp_stone>, <actuallyadditions:item_crystal_empowered:3>],
					 [<botania:livingrock:4>, <botania:livingrock:4>, <botania:livingrock:4>]]);

recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped(<mekanism:basicblock:7> * 3, [[<mekanism:ingot>, <actuallyadditions:item_crystal_empowered:1>, <mekanism:ingot>],
					        [<mekanism:ingot>, <mekanism:ingot:3>, <mekanism:ingot>],
					        [<mekanism:ingot>, <actuallyadditions:item_crystal_empowered>, <mekanism:ingot>]]);
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped(<mekanism:machineblock:11>, [[<mekanism:reinforcedplasticblock:2>, <mekanism:controlcircuit:3>, <mekanism:reinforcedplasticblock:2>],
					       [<mekanism:ingot>, <mekanism:teleportationcore>, <mekanism:ingot>],
					       [<mekanism:reinforcedplasticblock:2>, <actuallyadditions:block_misc:8>, <mekanism:reinforcedplasticblock:2>]]);
// deep dark portal technically counts?
recipes.remove(<extrautils2:teleporter:1>);
mods.botania.RuneAltar.addRecipe(<extrautils2:teleporter:1>, [<botania:livingrock>, <botania:livingrock>, <botania:manaresource:8>, <botania:livingrock>, <mysticalagriculture:storage:1>,
							     <actuallyadditions:item_crystal_empowered>, <mysticalagriculture:storage:1>], 2000);
