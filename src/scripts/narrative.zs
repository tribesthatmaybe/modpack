// some things we tweak bc narratives are important
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;

<weather2:sand_layer_placeable>.displayName = "Playa Dust";
//resource-loaded works but this doesn't? odd
//game.setLocalization("item.weather2.sand_layer_placeable.name", "Playa Dust");
//game.setLocalization("tile.weather2.sand_layer.name", "Playa Dust");

// c'mon now it's 2020
<storagedrawers:controllerslave>.displayName = "Drawer Interface";
// comedy tho
<alchemistry:evaporator>.displayName = "Evap Pond";

// hard to find dirt in the desert y'know
recipes.addShaped(<minecraft:dirt> * 4, [[<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>],
				         [<minecraft:rotten_flesh>, <ore:logWood>, <minecraft:rotten_flesh>],
					 [<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>]]);

// hard to find hops too
recipes.addShaped(<brewcraft:hopsseeditem> * 4, [[<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>],
					         [<mysticalagriculture:nature_essence>, <mysticalagriculture:crafting:18>, <mysticalagriculture:nature_essence>],
						 [<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>]]);

// consistent leather recipes
furnace.remove(<minecraft:leather>, <minecraft:rotten_flesh>);

// consistent books
recipes.removeShapeless(<minecraft:book>, [<ore:paper>, <ore:paper>, <ore:paper>, <ore:string>]);
recipes.removeShapeless(<minecraft:book>, [<ore:paper>, <ore:paper>, <ore:paper>, <minecraft:leather>]);
recipes.removeShapeless(<minecraft:book>, [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:string>, <tconstruct:pattern>, <tconstruct:pattern>]);
recipes.addShaped(<minecraft:book>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],[<minecraft:string>, <tconstruct:pattern>, <minecraft:leather>], [null, null, null]]);

// nature compass
scripts.shared.recipeRemapShaped(<naturescompass:naturescompass>, [[<botania:manaresource:3>, <mysticalagriculture:crafting:22>, <botania:manaresource:3>],
								   [<ore:plant>, <minecraft:compass>, <ore:plant>],
								   [<botania:manaresource:3>, <mysticalagriculture:crafting:22>, <botania:manaresource:3>]]);
// more leather sources
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:triceratops_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:allosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ankylosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:arthropleura_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:brachiosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ceratosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:citipati_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:compsognathus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:confuciusornis_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:crassigyrinus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:deinonychus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dilophosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:diplocaulus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:diplodocus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dodo_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dryosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:edaphosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:elasmotherium_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:gallimimus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:gastornis_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:henodus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:icthyosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:kelenken_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:liopleurodon_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:mammoth_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:megalania_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:megaloceros_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:meganeura_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:mosasaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ornitholestes_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:pachycephalosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:parasaurolophus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:phorusrhacos_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:platybelodon_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:plesiosaur_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:pterosaur_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:quagga_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:sarcosuchus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:smilodon_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:spinosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:stegosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:therizinosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:tiktaalik_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:titanis_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:triceratops_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:tyrannosaurus_cooked>, 12000);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:velociraptor_cooked>, 12000);

//// we hide all the behind-the-scenes parts of the tents from jei
var secretTentParts = [
    <yurtmod:tentmod_barrier>,
    <yurtmod:super_dirt>,
    <yurtmod:yurt_wall_outer>,
    <yurtmod:yurt_roof>,
    <yurtmod:yurt_wall_inner>,
    <yurtmod:bed_wall>,
    <yurtmod:bed_roof>,
    <yurtmod:indlu_wall_outer>,
    <yurtmod:indlu_wall_inner>,
    <yurtmod:tepee_wall_blank>,
    <yurtmod:tepee_wall_black>,
    <yurtmod:tepee_wall_yellow>,
    <yurtmod:tepee_wall_white>,
    <yurtmod:tepee_wall_red>,
    <yurtmod:tepee_wall_orange>,
    <yurtmod:tepee_wall_hope>,
    <yurtmod:tepee_wall_sun>,
    <yurtmod:tepee_wall_creeper>,
    <yurtmod:tepee_wall_universe>,
    <yurtmod:tepee_wall_eagle>,
    <yurtmod:tepee_wall_eagle>,
    <yurtmod:tepee_wall_triforce>,
    <yurtmod:tepee_wall_dreamcatcher>,
    <yurtmod:tepee_wall_rain>,
    <yurtmod:tepee_wall_magic>,
    <yurtmod:shamiana_white>,
    <yurtmod:shamiana_orange>,
    <yurtmod:shamiana_magenta>,
    <yurtmod:shamiana_light_blue>,
    <yurtmod:shamiana_yellow>,
    <yurtmod:shamiana_lime>,
    <yurtmod:shamiana_pink>,
    <yurtmod:shamiana_gray>,
    <yurtmod:shamiana_silver>,
    <yurtmod:shamiana_cyan>,
    <yurtmod:shamiana_purple>,
    <yurtmod:shamiana_blue>,
    <yurtmod:shamiana_brown>,
    <yurtmod:shamiana_green>,
    <yurtmod:shamiana_red>,
    <yurtmod:shamiana_black>
] as IItemStack[];
for widget in secretTentParts {
  mods.jei.JEI.removeAndHide(widget);
}
//// seasons tho
scripts.shared.recipeRemapShaped(<sereneseasons:greenhouse_glass> * 8, [[<minecraft:glass>, <ore:dyeCyan>, <minecraft:glass>],
						         [<ore:dyeCyan>, <actuallyadditions:block_misc:4>, <ore:dyeCyan>],
							 [<minecraft:glass>, <ore:dyeCyan>, <minecraft:glass>]]);
scripts.shared.recipeRemapShaped(<sereneseasons:season_clock>, [[null, <minecraft:quartz>, null],
						 [<appliedenergistics2:material>, <minecraft:clock>, <appliedenergistics2:material>],
						 [null, <minecraft:quartz>, null]]);
scripts.shared.recipeRemapShaped(<sereneseasons:season_sensor_spring>, [[<minecraft:redstone>, <botania:rune:4>, <minecraft:redstone>],
							 [<minecraft:redstone>, <sereneseasons:season_clock>, <minecraft:redstone>],
							 [<minecraft:redstone>, <opencomputers:material:4>, <minecraft:redstone>]]);
scripts.shared.recipeRemapShaped(<sereneseasons:season_sensor_summer>, [[<minecraft:redstone>, <botania:rune:5>, <minecraft:redstone>],
							 [<minecraft:redstone>, <sereneseasons:season_clock>, <minecraft:redstone>],
							 [<minecraft:redstone>, <opencomputers:material:4>, <minecraft:redstone>]]);
scripts.shared.recipeRemapShaped(<sereneseasons:season_sensor_autumn>, [[<minecraft:redstone>, <botania:rune:6>, <minecraft:redstone>],
							 [<minecraft:redstone>, <sereneseasons:season_clock>, <minecraft:redstone>],
							 [<minecraft:redstone>, <opencomputers:material:4>, <minecraft:redstone>]]);
scripts.shared.recipeRemapShaped(<sereneseasons:season_sensor_winter>, [[<minecraft:redstone>, <botania:rune:7>, <minecraft:redstone>],
							 [<minecraft:redstone>, <sereneseasons:season_clock>, <minecraft:redstone>],
							 [<minecraft:redstone>, <opencomputers:material:4>, <minecraft:redstone>]]);
// lol. lmao.
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gas_cartridge>, <immersiveengineering:metal:38>, <contenttweaker:gas_cartridge_plate>, 500);
mods.immersiveengineering.Blueprint.addRecipe("Metal Press Molds", <contenttweaker:gas_cartridge_plate>, [<immersiveengineering:metal:38>, <immersiveengineering:metal:38>,
						     	   <immersiveengineering:metal:38>, <immersiveengineering:metal:38>,
							   <immersiveengineering:metal:38>]);
