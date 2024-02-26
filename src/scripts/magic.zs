import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

//// parts
// manaweave cloth
scripts.shared.recipeRemapShaped(<botania:manaresource:22>, [[<botania:manaresource:16>, null, <botania:manaresource:16>],
					      [null, <mysticalagriculture:crafting:23>, null],
					      [<botania:manaresource:16>, null, <botania:manaresource:16>]]);
// eu magical wood
recipes.remove(<extrautils2:decorativesolidwood:1>);
mods.botania.RuneAltar.addRecipe(<extrautils2:decorativesolidwood:1>, [<ore:plankWood>, <minecraft:gold_ingot>], 50);

//// botania
// magic relies upon essence
scripts.shared.recipeRemapShaped(<botania:lexicon>, [[null, <ore:plant>, null],
				      [<mysticalagriculture:crafting>, <minecraft:book>, <mysticalagriculture:crafting>],
				      [null, <botania:dye:*>, null]]);
// do not allow use of any dye
scripts.shared.recipeRemapShaped(<botania:fertilizer>, [[null, <botania:petal:*>, null],
					 [<mysticalagriculture:crafting>, <minecraft:dye:15>, <mysticalagriculture:crafting>],
					 [null, <botania:petal:*>, null]]);
// block equipment
scripts.shared.recipeRemapShaped(<botania:altar>, [[<tconstruct:large_plate>.withTag({Material: "stone"}), <botania:petal:*>, <tconstruct:large_plate>.withTag({Material: "stone"})],
				    [null, <actuallyadditions:block_misc:4>, null],
				    [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
scripts.shared.recipeRemapShaped(<botania:runealtar>, [[null, null, null],
				        [<botania:livingrock:1>, <mysticalagriculture:crafting:38>, <botania:livingrock:1>],
					[<botania:livingrock:1>, <botania:manaresource:1>, <botania:livingrock:1>]]);
scripts.shared.recipeRemapShaped(<botania:opencrate>, [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
				        [<botania:livingwood:1>, null, <botania:livingwood:1>],
					[<botania:livingwood:1>, null, <botania:livingwood:1>]]);
scripts.shared.recipeRemapShaped(<botania:spreader>, [[<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>],
				       [<tconstruct:clear_glass>, <actuallyadditions:block_misc:4>, <botania:livingwood:1>],
				       [<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>]]);
scripts.shared.recipeRemapShaped(<botania:lens>, [[null, <botania:manaresource>, null],
				   [<botania:manaresource>, <tconstruct:clear_glass>, <botania:manaresource>],
				   [null, <botania:manaresource>, null]]);
scripts.shared.recipeRemapShaped(<botania:rfgenerator>, [[<botania:livingrock>, <mekanism:compressedredstone>, <botania:livingrock>],
					  [<immersiveengineering:metal_decoration0:6>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal_decoration0:6>],
					  [<botania:livingrock>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <botania:livingrock>]]);
// velocity lens
scripts.shared.recipeRemapShaped(<botania:lens:1>, [[null, <botania:rune:3>, null],
				     [<mysticalagriculture:crafting:24>, <botania:lens>, <mysticalagriculture:crafting:24>],
				     [null, null, null]]);
// potency lens
scripts.shared.recipeRemapShaped(<botania:lens:2>, [[null, <botania:rune:1>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <storagedrawers:upgrade_template>, null]]);
// resistance lens
scripts.shared.recipeRemapShaped(<botania:lens:3>, [[null, <botania:rune:2>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <conarm:armor_trim>.withTag({Material: "manasteel"}), null]]);
// efficiency lens
scripts.shared.recipeRemapShaped(<botania:lens:4>, [[null, <botania:rune>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <actuallyadditions:item_crystal:5>, null]]);
// bounce lens
scripts.shared.recipeRemapShaped(<botania:lens:5>, [[null, <botania:rune:5>, null],
				     [<cfm:inflatable_castle:*>, <botania:lens>, <cfm:inflatable_castle:*>],
				     [null, <cfm:inflatable_castle:*>, null]]);
// gravity lens
scripts.shared.recipeRemapShaped(<botania:lens:6>, [[null, <botania:rune:7>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <tconstruct:large_plate>.withTag({Material: "steel"}), null]]);
// bore lens
scripts.shared.recipeRemapShaped(<botania:lens:7>, [[null, <tconstruct:axe_head>.withTag({Material: "manasteel"}), null],
				     [<tconstruct:pick_head>.withTag({Material: "manasteel"}), <botania:lens>, <tconstruct:shovel_head>.withTag({Material: "manasteel"})],
				     [null, <botania:rune:2>, null]]);
// damaging lens
scripts.shared.recipeRemapShaped(<botania:lens:8>, [[null, <botania:rune:13>, null],
				     [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				     [null, <tconstruct:scythe_head>.withTag({Material: "manasteel"}), null]]);
// phantom lens
scripts.shared.recipeRemapShaped(<botania:lens:9>, [[null, <botania:platform>, null],
				     [<botania:platform>, <botania:lens>, <botania:platform>],
				     [null, <mysticalagriculture:storage>, null]]);
// magnetic lens
scripts.shared.recipeRemapShaped(<botania:lens:10>, [[null, <botania:rune:2>, null],
				      [<tconstruct:pan_head>.withTag({Material: "iron"}), <botania:lens>, <tconstruct:pan_head>.withTag({Material: "cobalt"})],
				      [null, <immersiveengineering:metal:34>, null]]);
// entropic lens
scripts.shared.recipeRemapShaped(<botania:lens:11>, [[null, <botania:rune:14>, null],
				      [<minecraft:gunpowder>, <botania:lens>, <minecraft:gunpowder>],
				      [null, <mysticalagriculture:coal>, null]]);
// influence lens
scripts.shared.recipeRemapShaped(<botania:lens:12>, [[<mysticalagriculture:soul_glass>, <botania:rune:3>, <mysticalagriculture:soul_glass>],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [null, <immersiveengineering:material:5>, null]]);

// weight lens
scripts.shared.recipeRemapShaped(<botania:lens:13>, [[null, <botania:rune>, null],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [<tconstruct:large_plate>.withTag({Material: "steel"}), null, <tconstruct:large_plate>]]);
// paint lens
scripts.shared.recipeRemapShaped(<botania:lens:14>, [[null, <botania:rune:11>, null],
				      [<minecraft:wool:*>, <botania:lens>, <minecraft:wool:*>],
				      [null, <vehicle:spray_can:*>, null]]);
// kindling lens
scripts.shared.recipeRemapShaped(<botania:lens:15>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				      [null, <minecraft:fire_charge>, null]]);
// force lens
scripts.shared.recipeRemapShaped(<botania:lens:16>, [[null, <botania:rune:8>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [null, <minecraft:piston>, null]]);
// flash lens
scripts.shared.recipeRemapShaped(<botania:lens:17>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [<mekanism:basicblock:4>, <mysticalagriculture:crafting:33>, <mekanism:basicblock:4>]]);
// warp lens
scripts.shared.recipeRemapShaped(<botania:lens:18>, [[null, <botania:rune:3>, null],
				      [<botania:manaresource:8>, <botania:lens>, <botania:manaresource:8>],
				      [<mysticalagriculture:crafting:35>, <botania:manaresource:8>, <mysticalagriculture:crafting:35>]]);
// redirective lens
scripts.shared.recipeRemapShaped(<botania:lens:19>, [[null, <botania:rune:5>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [<botania:livingwood:1>, <cfm:mirror>, <botania:livingwood:1>]]);
// firework lens
scripts.shared.recipeRemapShaped(<botania:lens:20>, [[null, <botania:rune:1>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [null, <actuallyadditions:block_firework_box>, null]]);
// flare lens
scripts.shared.recipeRemapShaped(<botania:lens:21>, [[<botania:elfglass>, <botania:rune:15>, <botania:elfglass>],
				      [null, <botania:lens>, null],
				      [null, <betterrecords:lasercluster>, null]]);
// meessenger lens
scripts.shared.recipeRemapShaped(<botania:lens:22>, [[null, <botania:rune:3>, null],
				      [<minecraft:paper>, <botania:lens>, <minecraft:paper>],
				      [<minecraft:paper>, <mysticalagriculture:crafting:33>, <minecraft:paper>]]);
// tripwire lens
scripts.shared.recipeRemapShaped(<botania:lens:23>, [[null, <botania:rune:13>, null],
 				      [<mysticalagriculture:crafting:34>, <botania:lens>, <minecraft:tripwire_hook>],
				      [null, <botania:manaresource:7>, null]]);
// alchemy catalyst
scripts.shared.recipeRemapShaped(<botania:alchemycatalyst>, [[<botania:livingrock>, <immersiveengineering:metal:37>, <botania:livingrock>],
					      [<actuallyadditions:item_crystal:3>, <botania:manaresource:1>, <actuallyadditions:item_crystal:3>],
					      [<botania:livingrock>, <immersiveengineering:metal:37>, <botania:livingrock>]]);
// conjuration catalyst
scripts.shared.recipeRemapShaped(<botania:conjurationcatalyst>, [[<botania:livingrock>, <actuallyadditions:item_crystal_empowered:4>, <botania:livingrock>],
						  [<botania:storage>, <botania:manaresource:9>, <botania:storage>],
						  [<botania:livingrock>, <actuallyadditions:item_crystal_empowered:4>, <botania:livingrock>]]);

// terraplate
recipes.remove(<botania:terraplate>);
mods.botania.RuneAltar.addRecipe(<botania:terraplate>, [<actuallyadditions:item_crystal_empowered:2>, <botania:storage>, <actuallyadditions:item_crystal_empowered:2>,
						       <botania:rune:11>, <botania:rune:3>, <botania:rune:8>, <botania:rune:2>, <botania:rune:1>, <botania:rune>, <quark:rune:16>], 1000);
// other
scripts.shared.recipeRemapShaped(<botania:managun>, [[null, <botania:manaresource>, null],
				      [<immersiveengineering:material:8>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <immersiveengineering:material:14>],
				      [<immersiveengineering:material:13>, null, null]]);
scripts.shared.recipeRemapShaped(<botania:unholycloak>, [[<botania:manaresource:12>, <minecraft:wool:15>, <botania:manaresource:12>],
					  [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					  [<minecraft:wool:15>, <mysticalagriculture:crafting:38>, <minecraft:wool:15>]]);
scripts.shared.recipeRemapShaped(<botania:balancecloak>, [[<botania:manaresource:16>, <minecraft:wool:8>, <botania:manaresource:16>],
					   [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					   [<minecraft:wool:8>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:wool:8>]]);
scripts.shared.recipeRemapShaped(<botania:holycloak>, [[<tconstruct:bow_string>, <minecraft:wool>, <tconstruct:bow_string>],
				        [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					[<minecraft:wool>, <actuallyadditions:item_crystal_empowered:3>, <minecraft:wool>]]);
scripts.shared.recipeRemapShaped(<botania:invisibilitycloak>, [[<botania:managlass>, <actuallyadditions:item_crystal_empowered:3>, <botania:managlass>],
					        [<botania:manaresource:22>, <botania:manaresource:1>, <botania:manaresource:22>],
						[<botania:managlass>, <mysticalagriculture:crafting:38>, <botania:managlass>]]);

// pure daisy tweaks
mods.botania.PureDaisy.addRecipe(<minecraft:sand>, <minecraft:dirt>, 600);

//// cyclic magic esque things
// torch launcher
scripts.shared.recipeRemapShaped(<cyclicmagic:tool_torch_launcher>, [[null, <realistictorches:glowstone_paste>, <mysticalagriculture:crafting:35>],
						      [<tconstruct:tough_binding>.withTag({Material: "manasteel"}), <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <tconstruct:tough_binding>.withTag({Material: "manasteel"})],
						      [<immersiveengineering:material:13>, <immersiveposts:metal_rods>, null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:tool_auto_torch>, [[<realistictorches:glowstone_paste>, null, <realistictorches:glowstone_paste>],
						  [<botania:manaresource:22>, <tconstruct:binding>.withTag({Material: "livingwood"}), <botania:manaresource:22>],
						  [<botania:manaresource:22>, <mysticalagriculture:crafting:35>, <botania:manaresource:22>]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:laser_cannon>, [[null, <mysticalagriculture:crafting:33>, <actuallyadditions:item_color_lens>],
					       [<immersiveengineering:material:1>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <mysticalagriculture:crafting:33>],
					       [<immersiveengineering:material:13>, <immersiveengineering:material:1>, null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:tool_launcher>, [[null, <botania:manaresource:16>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
					        [null, <tconstruct:binding>.withTag({Material: "manasteel"}), <botania:manaresource:16>],
						[<tconstruct:tough_tool_rod>.withTag({Material: "manasteel"}), null, null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:wand_hypno>, [[<immersiveengineering:metal:40>, <mysticalagriculture:crafting:35>, <immersiveengineering:metal:40>],
					     [null, <tconstruct:tough_binding>.withTag({Material: "refined_coralium"}), null],
					     [null, <tconstruct:tough_tool_rod>.withTag({Material: "elementium"}), null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:wand_missile>, [[<botania:manaresource:2>, <actuallyadditions:item_crystal_empowered:3>, <botania:manaresource:2>],
					       [null, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), null],
					       [null, <tconstruct:tough_tool_rod>.withTag({Material: "terrasteel"}), null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:ender_blaze>, [[null, <mysticalagriculture:fire_essence>, <botania:manaresource:9>],
					      [<mysticalagriculture:fire_essence>, <tconstruct:tough_binding>.withTag({Material: "manyullyn"}), <mysticalagriculture:fire_essence>],
					      [<tconstruct:tough_tool_rod>.withTag({Material: "elementium"}), <mysticalagriculture:fire_essence>, null]]);

// cyclic baubles
recipes.remove(<cyclicmagic:charm_antidote>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_antidote>, [<hooked:microcrafting:3>, <bountifulbaubles:trinketbezoar>,  <minecraft:lever>, <botania:rune:10>], 1000);
recipes.remove(<cyclicmagic:charm_water>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_water>, [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "prismarine"}), <botania:manaresource:1>,
							     <botania:rune>], 1000);
recipes.remove(<cyclicmagic:charm_air>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_air>, [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "elementium"}), <botania:manaresource:1>,
							   <botania:rune:3>, <botania:rune:8>], 2500);
recipes.remove(<cyclicmagic:charm_void>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_void>, [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "terrasteel"}), <botania:rune:2>,
							     <mysticalagriculture:crafting:24>], 1000);
recipes.remove(<cyclicmagic:charm_boat>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_void>, [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "manasteel"}), <botania:rune>,
							     <botania:manaresource:8>], 1000);
recipes.remove(<cyclicmagic:charm_speed>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_speed>, [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "electrum"}), <botania:rune:3>,
							      <botania:rune:14>], 1000);
recipes.remove(<cyclicmagic:charm_wing>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:charm_wing>,  [<hooked:microcrafting:3>, <tconstruct:pan_head>.withTag({Material: "livingwood"}), <botania:rune:3>,
							     <botania:manaresource:8>], 1000);
recipes.remove(<cyclicmagic:exp_pylon>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:exp_pylon>,  [<botania:rune:8>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <botania:rune:11>, <immersiveengineering:metal:40>,
							    <tconstruct:large_plate>], 2500);
recipes.remove(<cyclicmagic:block_disenchanter>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:block_disenchanter>, [<botania:rune:8>, <tconstruct:tough_binding>, <botania:rune:14>, <botania:manaresource:2>,
								    <immersiveengineering:metal:40>], 1500);
scripts.shared.recipeRemapShaped(<botania:tinyplanet>, [[<botania:livingrock:1>, <mysticalagriculture:crafting:32>, <botania:livingrock:1>],
							    [<mysticalagriculture:crafting:32>, <botania:manaresource:1>, <mysticalagriculture:crafting:32>],
							    [<botania:livingrock:1>, <mysticalagriculture:crafting:32>, <botania:livingrock:1>]]);
// gold and silver rings as a base part
scripts.shared.recipeRemapShaped(<actuallyadditions:item_misc:6>, [[null, <immersiveposts:metal_rods>, null],[<immersiveposts:metal_rods>, null, <immersiveposts:metal_rods>], [null, <immersiveposts:metal_rods>, null]]);
scripts.shared.recipeRemapShaped(<bountifulbaubles:ringiron>, [[null, <immersiveengineering:material:1>, null],[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>], [null, <immersiveengineering:material:1>, null]]);
scripts.shared.recipeRemapShaped(<botania:manaring>, [[<botania:manatablet>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
						      [<tconstruct:binding>.withTag({Material: "manasteel"}), <bountifulbaubles:ringiron>, <tconstruct:binding>.withTag({Material: "manasteel"})],
						      [null, <tconstruct:binding>.withTag({Material: "manasteel"}), null]]);
scripts.shared.recipeRemapShaped(<botania:manaringgreater>, [[null, <tconstruct:binding>.withTag({Material: "terrasteel"}), null],
						      [null, <botania:manaring>, null],
						      [null, null, null]]);
scripts.shared.recipeRemapShaped(<botania:auraring>, [[<botania:rune:8>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
						      [<tconstruct:binding>.withTag({Material: "manasteel"}), <bountifulbaubles:ringiron>, <tconstruct:binding>.withTag({Material: "manasteel"})],
						      [null, <tconstruct:binding>.withTag({Material: "manasteel"}), null]]);
scripts.shared.recipeRemapShaped(<botania:auraringgreater>, [[null, <tconstruct:binding>.withTag({Material: "terrasteel"}), null],
						      [null, <botania:auraring>, null],
						      [null, null, null]]);
scripts.shared.recipeRemapShaped(<botania:waterring>, [[<botania:rune>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
						       [<tconstruct:binding>.withTag({Material: "manasteel"}), <actuallyadditions:item_misc:6>, <tconstruct:binding>.withTag({Material: "manasteel"})],
						       [null, <tconstruct:binding>.withTag({Material: "manasteel"}), <mysticalagriculture:crafting:3>]]);
scripts.shared.recipeRemapShaped(<botania:magnetring>, [[<botania:lens:10>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
						       [<tconstruct:binding>.withTag({Material: "manasteel"}), <bountifulbaubles:ringiron>, <tconstruct:binding>.withTag({Material: "manasteel"})],
						       [null, <tconstruct:binding>.withTag({Material: "manasteel"}), null]]);
scripts.shared.recipeRemapShaped(<botania:miningring>, [[<botania:rune:2>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
					 [<tconstruct:binding>.withTag({Material: "manasteel"}), <bountifulbaubles:ringiron>, <tconstruct:binding>.withTag({Material: "manasteel"})],
					 [null, <tconstruct:binding>.withTag({Material: "manasteel"}), <tconstruct:pick_head>.withTag({Material: "steel"})]]);


scripts.shared.recipeRemapShaped(<botania:magnetringgreater>, [[null, <tconstruct:binding>.withTag({Material: "terrasteel"}), null],
							       [null, <botania:magnetring>, null],
							       [null, null, null]]);


scripts.shared.recipeRemapShaped(<botania:dodgering>, [[<botania:rune:3>, <tconstruct:binding>.withTag({Material: "manasteel"}), null],
						      [<tconstruct:binding>.withTag({Material: "manasteel"}), <bountifulbaubles:ringiron>, <tconstruct:binding>.withTag({Material: "manasteel"})],
						      [null, <tconstruct:binding>.withTag({Material: "manasteel"}), <weather2:sand_layer_placeable>]]);
scripts.shared.recipeRemapShaped(<botania:pixiering>, [[<botania:manaresource:8>, <tconstruct:binding>.withTag({Material: "elementium"}), null],
						       [<tconstruct:binding>.withTag({Material: "elementium"}), <actuallyadditions:item_misc:6>, <tconstruct:binding>.withTag({Material: "elementium"})],
						       [null, <tconstruct:binding>.withTag({Material: "elementium"}), null]]);
scripts.shared.recipeRemapShaped(<botania:reachring>, [[<botania:rune:15>, <tconstruct:binding>.withTag({Material: "elementium"}), null],
						       [<tconstruct:binding>.withTag({Material: "elementium"}), <actuallyadditions:item_misc:6>, <tconstruct:binding>.withTag({Material: "elementium"})],
						       [null, <tconstruct:binding>.withTag({Material: "elementium"}), null]]);


// tech-as-magic
recipes.remove(<extrautils2:angelblock>);
mods.botania.RuneAltar.addRecipe(<extrautils2:angelblock>, [<immersiveengineering:metal_decoration1:2>, <mysticalagriculture:crafting:24>, <botania:rune:3>, <mysticalagriculture:crafting:24>,
							   <actuallyadditions:item_misc:15>], 100);
// assorted magics
recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
mods.botania.RuneAltar.addRecipe(<actuallyadditions:item_wings_of_the_bats>, [<actuallyadditions:item_misc:15>, <mysticalagriculture:storage:3>, <botania:rune:3>,
									     <mysticalagriculture:crafting:24>, <botania:rune:14>, <botania:manaresource:1>], 1000);
scripts.shared.recipeRemapShaped(<extrautils2:goldenlasso>, [[null, <immersiveengineering:metal:40>, null],
					      [<immersiveengineering:metal:40>, <extrautils2:decorativeglass>, <immersiveengineering:metal:40>],
					      [<botania:manaresource:1>, <tconstruct:pan_head>.withTag({Material: "manasteel"}), <botania:manaresource:1>]]);
// mana tablet
scripts.shared.recipeRemapShaped(<botania:manatablet>, [[<botania:livingrock>, <tconstruct:binding>.withTag({Material: "manasteel"}), <botania:livingrock>],
					 [<actuallyadditions:item_crystal:3>, <botania:manaresource:2>, <actuallyadditions:item_crystal:3>],
					 [<botania:livingrock>, <tconstruct:binding>.withTag({Material: "manasteel"}), <botania:livingrock>]]);
// soul scribe
recipes.remove(<botania:enderdagger>);
mods.botania.RuneAltar.addRecipe(<botania:enderdagger>, [<botania:manaresource:2>, <actuallyadditions:item_crystal:1>, <tconstruct:large_sword_blade>.withTag({Material: "manasteel"}),
							<tconstruct:tough_tool_rod>.withTag({Material: "livingwood"}), <actuallyadditions:item_crystal:1>], 2500);
// spark
recipes.remove(<botania:spark>);
mods.botania.RuneAltar.addRecipe(<botania:spark>, [<actuallyadditions:item_crystal>,
						  <ore:petalOrange>,
						  <mysticalagriculture:crafting:1>,
						  <minecraft:blaze_powder>,
						  <minecraft:ghast_tear>,
						  <minecraft:blaze_powder>,
						  <mysticalagriculture:crafting:1>,
						  <ore:petalYellow>,
						  <actuallyadditions:item_crystal>], 500);

// soulium dagger
scripts.shared.recipeRemapShaped(<mysticalagriculture:soulium_dagger>, [[null, null, <mysticalagriculture:crafting:38>],
							 [<tconstruct:binding>.withTag({Material: "livingwood"}), <mysticalagriculture:crafting:38>, null],
							 [<mysticalagriculture:crafting:22>, <tconstruct:cross_guard>.withTag({Material: "livingwood"}), null]]);
// alfenheim portal stuff
recipes.remove(<botania:alfheimportal>);
mods.botania.RuneAltar.addRecipe(<botania:alfheimportal>, [<botania:manaresource:18>, <botania:manaresource:18>, <botania:manaresource:18>,
							  <actuallyadditions:item_crystal_empowered:1>, <botania:rune:8>, <botania:rune:15>,
							  <immersiveengineering:metal:16>, <actuallyadditions:item_solidified_experience>], 3000);
scripts.shared.recipeRemapShaped(<botania:pylon>, [[null, <botania:manaresource:2>, null],
				    [<botania:manaresource>, <actuallyadditions:item_crystal:2>, <botania:manaresource>],
				    [<minecraft:gold_ingot>, <actuallyadditions:block_misc:4>, <minecraft:gold_ingot>]]);
scripts.shared.recipeRemapShaped(<botania:pylon:1>, [[null, <botania:manaresource:18>, null],
				      [<botania:manaresource:18>, <botania:pylon>, <botania:manaresource:18>],
				      [<botania:quartztypedark>, <actuallyadditions:block_misc:8>, <botania:quartztypedark>]]);
