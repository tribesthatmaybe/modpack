import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemTransformer;

// weapon parts
recipes.remove(<immersiveengineering:toolupgrade:8>);
mods.immersiveengineering.Blueprint.addRecipe("Scopes", <immersiveengineering:toolupgrade:8>,
							[<immersiveposts:metal_rods:1>, <tconstruct:clear_glass>, <immersiveposts:metal_rods:1>,
							 <tconstruct:binding>.withTag({Material: "iron"}), <immersiveengineering:metal:30>]);
mods.immersiveengineering.Blueprint.addRecipe("Scopes", <cgm:scope>, [<immersiveengineering:toolupgrade:8>, <immersiveengineering:material:9>]);
mods.immersiveengineering.Blueprint.addRecipe("Scopes", <cgm:scope:1>, [<immersiveengineering:material:8>, <immersiveengineering:toolupgrade:8>,
							<minecraft:glass>, <immersiveengineering:material:9>]);
mods.immersiveengineering.Blueprint.addRecipe("Scopes", <cgm:scope:2>, [<alchemistry:ingot:88>, <immersiveengineering:toolupgrade:8>, <tconstruct:seared_glass>]);

// CGM has balance issues, and doesn't work properly with reskillable, so here we are
// ammo is done using existing ie blueprints
mods.immersiveengineering.Blueprint.addRecipe("bullet", <cgm:basic_ammo>, [<immersiveengineering:bullet>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <immersiveengineering:metal:22>,
                                                                          <immersiveengineering:metal:22>,
                                                                          <mekanism:nugget:5>]);
mods.immersiveengineering.Blueprint.addRecipe("bullet", <cgm:shell>, [<immersiveengineering:bullet:1>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:iron_nugget>,
                                                                          <minecraft:iron_nugget>,
                                                                          <minecraft:iron_nugget>]);
// this will be a non-craftable blueprint
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:missile>, [<mekanism:plasticblock:8>,
                                                                          <cyclicmagic:ender_tnt_3>,
                                                                          <immersiveengineering:material:8>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <mekanism:nugget:4>,
                                                                          <mekanism:nugget:4>]);
mods.immersiveengineering.Blueprint.addRecipe("booms", <cgm:stun_grenade>, [<mekanism:plasticblock:8>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:gunpowder>,
                                                                          <minecraft:glowstone_dust>,
                                                                          <minecraft:glowstone_dust>]);
// weapons
recipes.remove(<immersiveengineering:railgun>);
mods.immersiveengineering.Blueprint.addRecipe("Heavy Weapons", <immersiveengineering:railgun>, [<actuallyadditions:item_battery>, <immersiveengineering:material:14>,
						     	       <immersiveengineering:metal_decoration0:1>, <actuallyadditions:item_misc:7>,
							       <immersiveengineering:material:13>, <immersiveengineering:material:16>]);
recipes.remove(<immersiveengineering:revolver>);
mods.immersiveengineering.Blueprint.addRecipe("Guns", <immersiveengineering:revolver>, [<immersiveengineering:material:14>, <immersiveengineering:material:15>,
						     <immersiveengineering:material:13>, <immersiveengineering:material:16>,
						     <immersiveengineering:metal:39>]);
mods.immersiveengineering.Blueprint.addRecipe("Guns", <cgm:shotgun>, [
						      <immersiveengineering:treated_wood>,
						      <immersiveengineering:material:13>,
						      <immersiveengineering:material:16>,
						      <immersiveengineering:material:14>,
						      <immersiveengineering:material:14>]);
mods.immersiveengineering.Blueprint.addRecipe("Guns", <cgm:machine_pistol>, [<mekanism:basicblock:8>, <immersiveengineering:material:9>,
						      			     <immersiveengineering:material:14>, <immersiveengineering:material:13>,
									     <immersiveengineering:material:16>, <immersiveengineering:material:15>]);
mods.immersiveengineering.Blueprint.addRecipe("Guns", <cgm:assault_rifle>, [<mekanism:plasticblock:8>, <mekanism:basicblock:8>,
								    <immersiveengineering:material:9>, <immersiveengineering:material:14>,
                                       				    <immersiveengineering:material:16>]);
mods.immersiveengineering.Blueprint.addRecipe("Heavy Weapons", <cgm:chain_gun>, [<immersiveengineering:material:9>, <vehicle:electric_engine:1>,
							       <immersiveengineering:material:16>, <immersiveengineering:material:14>,
							       <alchemistry:ingot:74>, <mekanism:basicblock:8>]);

mods.immersiveengineering.Blueprint.addRecipe("Heavy Weapons", <cgm:grenade_launcher>, [<mekanism:controlcircuit>, <mekanism:plasticblock:8>,
						     	       <immersiveengineering:metal_device1:6>, <mekanism:basicblock:8>,
							       <immersiveengineering:material:16>]);
mods.immersiveengineering.Blueprint.addRecipe("Heavy Weapons", <cgm:bazooka>, [<mekanism:plasticblock:8>, <mekanism:controlcircuit:1>,
						     <immersiveengineering:metal_device1:6>, <actuallyadditions:item_misc:8>,
						     <immersiveengineering:material:16>]);
// lo fi weapons
scripts.shared.recipeRemapShaped(<cyclicmagic:boomerang>, [[null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null],
					    [<tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), <realistictorches:glowstone_paste>, <tconstruct:binding>.withTag({Material: "silver"})],
					    [null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null]]);
scripts.shared.recipeRemapShaped(<extrautils2:boomerang>, [[null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null],
					    [<tconstruct:binding>.withTag({Material: "silver"}), <realistictorches:glowstone_paste>, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"})],
					    [null, <tconstruct:tool_rod>.withTag({Material: "xu_magical_wood"}), null]]);
scripts.shared.recipeRemapShaped(<cyclicmagic:slingshot_weapon>, [[null, <tconstruct:binding>.withTag({Material: "stone"}), <tconstruct:bow_string>.withTag({Material: "string"})],
						   [null, <tconstruct:tool_rod>.withTag({Material: "wood"}), <tconstruct:binding>.withTag({Material: "stone"})],
						   [<tconstruct:tool_rod>.withTag({Material: "wood"}), null, null]]);
// magical weapons!
scripts.shared.recipeRemapShaped(<botania:terrasword>, [[null, null, <tconstruct:sword_blade>.withTag({Material: "terrasteel"})],
						        [null, <tconstruct:hand_guard>.withTag({Material: "terrasteel"}), null],
							[<botania:manaresource:3>, <tconstruct:binding>.withTag({Material: "bronze"}), null]]);
// tinkers upgrades
scripts.shared.recipeRemapShaped(<tconstruct:materials:14>, [[<mekanism:otherdust:6>, <mekanism:otherdust:6>, <mekanism:otherdust:6>],
							     [<mekanism:otherdust:6>, <railcraft:plate:11>, <mekanism:otherdust:6>],
							     [<mekanism:otherdust:6>, <mekanism:otherdust:6>, <mekanism:otherdust:6>]]);
recipes.remove(<tconstruct:soil:3>);
recipes.remove(<tconstruct:soil:4>);
mods.abyssalcraft.Transmutator.addTransmutation(<minecraft:soul_sand>, <tconstruct:soil:4>, 10);

//// booms
// efln
recipes.addShaped(<tconstruct:throwball:1> * 4, [
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>],
                                           [<immersiveengineering:material:2>, <immersiveengineering:wooden_device0:4>, <immersiveengineering:material:2>],
                                           [<minecraft:gunpowder>, <immersiveengineering:material:2>, <minecraft:gunpowder>]]);
recipes.removeShapeless(<tconstruct:throwball:1>);
recipes.removeShapeless(<tconstruct:throwball:1>);
// dy-no-mite
recipes.remove(<cyclicmagic:ender_tnt_1>);
scripts.shared.recipeRemapShaped(<cyclicmagic:ender_tnt_1> * 6, [[<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:gunpowder>, <tconstruct:binding>.withTag({Material: "wood"})],
					      	  [<minecraft:clay_ball>, <immersiveengineering:wooden_device0:4>, <minecraft:clay_ball>],
					      	  [<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:gunpowder>, <tconstruct:binding>.withTag({Material: "wood"})]]);
recipes.remove(<cyclicmagic:ender_tnt_2>);
recipes.addShapeless(<cyclicmagic:ender_tnt_2>, [<cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_3>);
recipes.addShapeless(<cyclicmagic:ender_tnt_3>, [<cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <cyclicmagic:ender_tnt_1>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_3>, [<cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_4>);
recipes.addShapeless(<cyclicmagic:ender_tnt_4>, [<cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <cyclicmagic:ender_tnt_2>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_4>, [<cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_5>);
recipes.addShapeless(<cyclicmagic:ender_tnt_5>, [<cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <cyclicmagic:ender_tnt_3>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_5>, [<cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <minecraft:clay_ball>]);
recipes.remove(<cyclicmagic:ender_tnt_6>);
recipes.addShapeless(<cyclicmagic:ender_tnt_6>, [<cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <cyclicmagic:ender_tnt_4>, <minecraft:clay_ball>]);
recipes.addShapeless(<cyclicmagic:ender_tnt_6>, [<cyclicmagic:ender_tnt_5>, <cyclicmagic:ender_tnt_5>, <minecraft:clay_ball>]);

// lux sabers
// lux sabers
val saberColors = [
    4,        // blue
    13,       // magenta
    1,        // red
    11,       // yellow
    2,        // green
    6,        // cyan
    15,       // white
    7         // light gray
] as short[];
for i, color in saberColors {
    val illumar = itemUtils.getItem("projectred-core:resource_item", (15 - color) + 500);
    val saber = itemUtils.getItem("extrautils2:luxsaber", i);
    recipes.remove(saber);
    recipes.addShaped(saber, [[<extrautils2:ingredients:17>, <mekanism:basicblock:10>, <extrautils2:ingredients:17>],
    			      [<immersiveengineering:metal:38>, <actuallyadditions:item_battery>, <immersiveengineering:metal:38>],
			      [<mysticalagriculture:crafting:34>, <mekanism:controlcircuit:3>, illumar]]);
}
