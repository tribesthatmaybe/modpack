import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

//// parts
// manaweave cloth
recipes.remove(<botania:manaresource:22>);
recipes.addShaped(<botania:manaresource:22>, [[<botania:manaresource:16>, null, <botania:manaresource:16>],
					      [null, <mysticalagriculture:crafting:23>, null],
					      [<botania:manaresource:16>, null, <botania:manaresource:16>]]);
// eu magical wood
recipes.remove(<extrautils2:decorativesolidwood:1>);
mods.botania.RuneAltar.addRecipe(<extrautils2:decorativesolidwood:1>, [<ore:plankWood>, <minecraft:gold_ingot>], 50);

//// botania
// magic relies upon essence
recipes.remove(<botania:lexicon>);
recipes.addShaped(<botania:lexicon>, [[null, <ore:plant>, null],
				      [<mysticalagriculture:crafting>, <minecraft:book>, <mysticalagriculture:crafting>],
				      [null, <botania:dye:*>, null]]);
// do not allow use of any dye
recipes.remove(<botania:fertilizer>);
recipes.addShaped(<botania:fertilizer>, [[null, <botania:petal:*>, null],
					 [<mysticalagriculture:crafting>, <minecraft:dye:15>, <mysticalagriculture:crafting>],
					 [null, <botania:petal:*>, null]]);
// block equipment
recipes.remove(<botania:altar>);
recipes.addShaped(<botania:altar>, [[<tconstruct:large_plate>.withTag({Material: "stone"}), <botania:petal:*>, <tconstruct:large_plate>.withTag({Material: "stone"})],
				    [null, <actuallyadditions:block_misc:4>, null],
				    [<minecraft:stone_slab:3>, <minecraft:cobblestone>, <minecraft:stone_slab:3>]]);
recipes.remove(<botania:runealtar>);
recipes.addShaped(<botania:runealtar>, [[null, null, null],
				        [<botania:livingrock:1>, <mysticalagriculture:crafting:38>, <botania:livingrock:1>],
					[<botania:livingrock:1>, <botania:manaresource:1>, <botania:livingrock:1>]]);
recipes.remove(<botania:opencrate>);
recipes.addShaped(<botania:opencrate>, [[<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>],
				        [<botania:livingwood:1>, null, <botania:livingwood:1>],
					[<botania:livingwood:1>, null, <botania:livingwood:1>]]);
recipes.remove(<botania:spreader>);
recipes.addShaped(<botania:spreader>, [[<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>],
				       [<tconstruct:clear_glass>, <actuallyadditions:block_misc:4>, <botania:livingwood:1>],
				       [<mysticalagriculture:crafting:33>, <botania:livingwood:1>, <botania:livingwood:1>]]);
recipes.remove(<botania:lens>);
recipes.addShaped(<botania:lens>, [[null, <botania:manaresource>, null],
				   [<botania:manaresource>, <tconstruct:clear_glass>, <botania:manaresource>],
				   [null, <botania:manaresource>, null]]);
recipes.remove(<botania:rfgenerator>);
recipes.addShaped(<botania:rfgenerator>, [[<botania:livingrock>, <mekanism:compressedredstone>, <botania:livingrock>],
					  [<immersiveengineering:metal_decoration0:6>, <actuallyadditions:block_misc:9>, <immersiveengineering:metal_decoration0:6>],
					  [<botania:livingrock>, <tconstruct:large_plate>.withTag({Material: "manasteel"}), <botania:livingrock>]]);
// velocity lens
recipes.remove(<botania:lens:1>);
recipes.addShaped(<botania:lens:1>, [[null, <botania:rune:3>, null],
				     [<mysticalagriculture:crafting:24>, <botania:lens>, <mysticalagriculture:crafting:24>],
				     [null, null, null]]);
// potency lens
recipes.remove(<botania:lens:2>);
recipes.addShaped(<botania:lens:2>, [[null, <botania:rune:1>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <storagedrawers:upgrade_template>, null]]);
// resistance lens
recipes.remove(<botania:lens:3>);
recipes.addShaped(<botania:lens:3>, [[null, <botania:rune:2>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <conarm:armor_trim>.withTag({Material: "manasteel"}), null]]);
// efficiency lens
recipes.remove(<botania:lens:4>);
recipes.addShaped(<botania:lens:4>, [[null, <botania:rune>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <actuallyadditions:item_crystal:5>, null]]);
// bounce lens
recipes.remove(<botania:lens:5>);
recipes.addShaped(<botania:lens:5>, [[null, <botania:rune:5>, null],
				     [<cfm:inflatable_castle:*>, <botania:lens>, <cfm:inflatable_castle:*>],
				     [null, <cfm:inflatable_castle:*>, null]]);
// gravity lens
recipes.remove(<botania:lens:6>);
recipes.addShaped(<botania:lens:6>, [[null, <botania:rune:7>, null],
				     [<mysticalagriculture:crafting>, <botania:lens>, <mysticalagriculture:crafting>],
				     [null, <tconstruct:large_plate>.withTag({Material: "steel"}), null]]);
// bore lens
recipes.remove(<botania:lens:7>);
recipes.addShaped(<botania:lens:7>, [[null, <tconstruct:axe_head>.withTag({Material: "manasteel"}), null],
				     [<tconstruct:pick_head>.withTag({Material: "manasteel"}), <botania:lens>, <tconstruct:shovel_head>.withTag({Material: "manasteel"})],
				     [null, <botania:rune:2>, null]]);
// damaging lens
recipes.remove(<botania:lens:8>);
recipes.addShaped(<botania:lens:8>, [[null, <botania:rune:13>, null],
				     [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				     [null, <tconstruct:scythe_head>.withTag({Material: "manasteel"}), null]]);
// phantom lens
recipes.remove(<botania:lens:9>);
recipes.addShaped(<botania:lens:9>, [[null, <botania:platform>, null],
				     [<botania:platform>, <botania:lens>, <botania:platform>],
				     [null, <mysticalagriculture:storage>, null]]);
// magnetic lens
recipes.remove(<botania:lens:10>);
recipes.addShaped(<botania:lens:10>, [[null, <botania:rune:2>, null],
				      [<tconstruct:pan_head>.withTag({Material: "iron"}), <botania:lens>, <tconstruct:pan_head>.withTag({Material: "cobalt"})],
				      [null, <immersiveengineering:metal:34>, null]]);
// entropic lens
recipes.remove(<botania:lens:11>);
recipes.addShaped(<botania:lens:11>, [[null, <botania:rune:14>, null],
				      [<minecraft:gunpowder>, <botania:lens>, <minecraft:gunpowder>],
				      [null, <mysticalagriculture:coal>, null]]);
// influence lens
recipes.remove(<botania:lens:12>);
recipes.addShaped(<botania:lens:12>, [[<mysticalagriculture:soul_glass>, <botania:rune:3>, <mysticalagriculture:soul_glass>],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [null, <immersiveengineering:material:5>, null]]);

// weight lens
recipes.remove(<botania:lens:13>);
recipes.addShaped(<botania:lens:13>, [[null, <botania:rune>, null],
				      [<tconstruct:tough_binding>.withTag({Material: "prismarine"}), <botania:lens>, <tconstruct:tough_binding>.withTag({Material: "prismarine"})],
				      [<tconstruct:large_plate>.withTag({Material: "steel"}), null, <tconstruct:large_plate>]]);
// paint lens
recipes.remove(<botania:lens:14>);
recipes.addShaped(<botania:lens:14>, [[null, <botania:rune:11>, null],
				      [<minecraft:wool:*>, <botania:lens>, <minecraft:wool:*>],
				      [null, <vehicle:spray_can:*>, null]]);
// kindling lens
recipes.remove(<botania:lens:15>);
recipes.addShaped(<botania:lens:15>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:34>, <botania:lens>, <mysticalagriculture:crafting:34>],
				      [null, <minecraft:fire_charge>, null]]);
// force lens
recipes.remove(<botania:lens:16>);
recipes.addShaped(<botania:lens:16>, [[null, <botania:rune:8>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [null, <minecraft:piston>, null]]);
// flash lens
recipes.remove(<botania:lens:17>);
recipes.addShaped(<botania:lens:17>, [[null, <botania:rune:1>, null],
				      [<mysticalagriculture:crafting:33>, <botania:lens>, <mysticalagriculture:crafting:33>],
				      [<mekanism:basicblock:4>, <mysticalagriculture:crafting:33>, <mekanism:basicblock:4>]]);
// warp lens
recipes.remove(<botania:lens:18>);
recipes.addShaped(<botania:lens:18>, [[null, <botania:rune:3>, null],
				      [<botania:manaresource:8>, <botania:lens>, <botania:manaresource:8>],
				      [<mysticalagriculture:crafting:35>, <mekanism:teleportationcore>, <mysticalagriculture:crafting:35>]]);
// redirective lens
recipes.remove(<botania:lens:19>);
recipes.addShaped(<botania:lens:19>, [[null, <botania:rune:5>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [<botania:livingwood:1>, <cfm:mirror>, <botania:livingwood:1>]]);
// firework lens
recipes.remove(<botania:lens:20>);
recipes.addShaped(<botania:lens:20>, [[null, <botania:rune:1>, null],
				      [<botania:manaresource:7>, <botania:lens>, <botania:manaresource:7>],
				      [null, <actuallyadditions:block_firework_box>, null]]);
// flare lens
recipes.remove(<botania:lens:21>);
recipes.addShaped(<botania:lens:21>, [[<botania:elfglass>, <botania:rune:15>, <botania:elfglass>],
				      [null, <botania:lens>, null],
				      [null, <betterrecords:lasercluster>, null]]);
// meessenger lens
recipes.remove(<botania:lens:22>);
recipes.addShaped(<botania:lens:22>, [[null, <botania:rune:3>, null],
				      [<minecraft:paper>, <botania:lens>, <minecraft:paper>],
				      [<minecraft:paper>, <mysticalagriculture:crafting:33>, <minecraft:paper>]]);
// tripwire lens
recipes.remove(<botania:lens:23>);
recipes.addShaped(<botania:lens:23>, [[null, <botania:rune:13>, null],
 				      [<mysticalagriculture:crafting:34>, <botania:lens>, <minecraft:tripwire_hook>],
				      [null, <botania:manaresource:7>, null]]);
// alchemy catalyst
recipes.remove(<botania:alchemycatalyst>);
recipes.addShaped(<botania:alchemycatalyst>, [[<botania:livingrock>, <immersiveengineering:metal:37>, <botania:livingrock>],
					      [<actuallyadditions:item_crystal:3>, <botania:manaresource:1>, <actuallyadditions:item_crystal:3>],
					      [<botania:livingrock>, <immersiveengineering:metal:37>, <botania:livingrock>]]);
// other
recipes.remove(<botania:managun>);
recipes.addShaped(<botania:managun>, [[null, <botania:manaresource>, null],
				      [<immersiveengineering:material:8>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <immersiveengineering:material:14>],
				      [<immersiveengineering:material:13>, null, null]]);
recipes.remove(<botania:unholycloak>);
recipes.addShaped(<botania:unholycloak>, [[<botania:manaresource:12>, <minecraft:wool:15>, <botania:manaresource:12>],
					  [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					  [<minecraft:wool:15>, <mysticalagriculture:crafting:38>, <minecraft:wool:15>]]);
recipes.remove(<botania:balancecloak>);
recipes.addShaped(<botania:balancecloak>, [[<botania:manaresource:16>, <minecraft:wool:8>, <botania:manaresource:16>],
					   [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					   [<minecraft:wool:8>, <actuallyadditions:item_crystal_empowered:4>, <minecraft:wool:8>]]);
recipes.remove(<botania:holycloak>);
recipes.addShaped(<botania:holycloak>, [[<tconstruct:bow_string>, <minecraft:wool>, <tconstruct:bow_string>],
				        [<botania:manaresource:22>, <botania:manaresource:5>, <botania:manaresource:22>],
					[<minecraft:wool>, <actuallyadditions:item_crystal_empowered:3>, <minecraft:wool>]]);
recipes.remove(<botania:invisibilitycloak>);
recipes.addShaped(<botania:invisibilitycloak>, [[<botania:managlass>, <actuallyadditions:item_crystal_empowered:3>, <botania:managlass>],
					        [<botania:manaresource:22>, <botania:manaresource:1>, <botania:manaresource:22>],
						[<botania:managlass>, <mysticalagriculture:crafting:38>, <botania:managlass>]]);

// pure daisy tweaks
mods.botania.PureDaisy.addRecipe(<minecraft:sand>, <minecraft:dirt>, 600);

//// cyclic magic esque things
// torch launcher
recipes.remove(<cyclicmagic:tool_torch_launcher>);
recipes.addShaped(<cyclicmagic:tool_torch_launcher>, [[null, <realistictorches:glowstone_paste>, <mysticalagriculture:crafting:35>],
						      [<tconstruct:tough_binding>.withTag({Material: "manasteel"}), <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <tconstruct:tough_binding>.withTag({Material: "manasteel"})],
						      [<immersiveengineering:material:13>, <immersiveposts:metal_rods>, null]]);
recipes.remove(<cyclicmagic:tool_auto_torch>);
recipes.addShaped(<cyclicmagic:tool_auto_torch>, [[<realistictorches:glowstone_paste>, null, <realistictorches:glowstone_paste>],
						  [<botania:manaresource:22>, <tconstruct:binding>.withTag({Material: "livingwood"}), <botania:manaresource:22>],
						  [<botania:manaresource:22>, <mysticalagriculture:crafting:35>, <botania:manaresource:22>]]);
recipes.remove(<cyclicmagic:laser_cannon>);
recipes.addShaped(<cyclicmagic:laser_cannon>, [[null, <mysticalagriculture:crafting:33>, <actuallyadditions:item_color_lens>],
					       [<immersiveengineering:material:1>, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), <mysticalagriculture:crafting:33>],
					       [<immersiveengineering:material:13>, <immersiveengineering:material:1>, null]]);
recipes.remove(<cyclicmagic:tool_launcher>);
recipes.addShaped(<cyclicmagic:tool_launcher>, [[null, <botania:manaresource:16>, <tconstruct:large_plate>.withTag({Material: "electrum"})],
					        [null, <tconstruct:binding>.withTag({Material: "manasteel"}), <botania:manaresource:16>],
						[<tconstruct:tough_tool_rod>.withTag({Material: "manasteel"}), null, null]]);
recipes.remove(<cyclicmagic:wand_hypno>);
recipes.addShaped(<cyclicmagic:wand_hypno>, [[<immersiveengineering:metal:40>, <mysticalagriculture:crafting:35>, <immersiveengineering:metal:40>],
					     [null, <tconstruct:tough_binding>.withTag({Material: "refined_coralium"}), null],
					     [null, <tconstruct:tough_tool_rod>.withTag({Material: "elementium"}), null]]);
recipes.remove(<cyclicmagic:wand_missile>);
recipes.addShaped(<cyclicmagic:wand_missile>, [[<botania:manaresource:2>, <actuallyadditions:item_crystal_empowered:3>, <botania:manaresource:2>],
					       [null, <tconstruct:tough_binding>.withTag({Material: "livingwood"}), null],
					       [null, <tconstruct:tough_tool_rod>.withTag({Material: "terrasteel"}), null]]);
recipes.remove(<cyclicmagic:ender_blaze>);
recipes.addShaped(<cyclicmagic:ender_blaze>, [[null, <mysticalagriculture:fire_essence>, <botania:manaresource:9>],
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
mods.botania.RuneAltar.addRecipe(<cyclicmagic:exp_pylon>,  [<botania:rune:8>, <tconstruct:tough_binding>, <botania:rune:11>, <immersiveengineering:metal:40>,
							    <tconstruct:large_plate>], 2500);
recipes.remove(<cyclicmagic:block_disenchanter>);
mods.botania.RuneAltar.addRecipe(<cyclicmagic:block_disenchanter>, [<botania:rune:8>, <tconstruct:tough_binding>, <botania:rune:14>, <botania:manaresource:2>,
								    <immersiveengineering:metal:40>], 1500);

// tech-as-magic
recipes.remove(<extrautils2:angelblock>);
mods.botania.RuneAltar.addRecipe(<extrautils2:angelblock>, [<immersiveengineering:metal_decoration1:2>, <mysticalagriculture:crafting:24>, <botania:rune:3>, <mysticalagriculture:crafting:24>,
							   <actuallyadditions:item_misc:15>], 100);
// assorted magics
recipes.remove(<actuallyadditions:item_wings_of_the_bats>);
mods.botania.RuneAltar.addRecipe(<actuallyadditions:item_wings_of_the_bats>, [<actuallyadditions:item_misc:15>, <mysticalagriculture:storage:3>, <botania:rune:3>,
									     <mysticalagriculture:crafting:24>, <botania:rune:14>, <botania:manaresource:1>], 1000);
recipes.remove(<extrautils2:goldenlasso>);
recipes.addShaped(<extrautils2:goldenlasso>, [[null, <immersiveengineering:metal:40>, null],
					      [<immersiveengineering:metal:40>, <extrautils2:decorativeglass>, <immersiveengineering:metal:40>],
					      [<botania:manaresource:1>, <tconstruct:pan_head>.withTag({Material: "manasteel"}), <botania:manaresource:1>]]);

// mystcraft portal "controller"
recipes.remove(<mystcraft:blockbookreceptacle>);
mods.botania.RuneAltar.addRecipe(<mystcraft:blockbookreceptacle>, [<mystcraft:blockcrystal>, <botania:livingrock>, <botania:manaresource:8>, <botania:livingrock>,
								   <mystcraft:blockcrystal>, <mysticalagriculture:storage:2>], 2500);

//// baubles and more
