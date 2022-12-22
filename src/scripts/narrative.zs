// some things we tweak bc narratives are important
import crafttweaker.game.IGame;

<weather2:sand_layer_placeable>.displayName = "Playa Dust";
//resource-loaded works but this doesn't? odd
//game.setLocalization("item.weather2.sand_layer_placeable.name", "Playa Dust");
//game.setLocalization("tile.weather2.sand_layer.name", "Playa Dust");

// c'mon now it's 2020
<storagedrawers:controllerslave>.displayName = "Drawer Interface";

// hard to find dirt in the desert y'know
recipes.addShaped(<minecraft:dirt> * 4, [[<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>],[<minecraft:rotten_flesh>, <ore:logWood>, <minecraft:rotten_flesh>], [<minecraft:clay_ball>, <minecraft:rotten_flesh>, <minecraft:clay_ball>]]);

// hard to find hops too
recipes.addShaped(<brewcraft:hopsseeditem>, [[<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>],[<mysticalagriculture:nature_essence>, <mysticalagriculture:crafting:18>, <mysticalagriculture:nature_essence>], [<minecraft:wheat_seeds>, <mysticalagriculture:crafting:6>, <minecraft:wheat_seeds>]]);

// consistent leather recipes
furnace.remove(<minecraft:leather>, <minecraft:rotten_flesh>);

// consistent books
recipes.removeShapeless(<minecraft:book>, [<ore:paper>, <ore:paper>, <ore:paper>, <ore:string>]);
recipes.removeShapeless(<minecraft:book>, [<ore:paper>, <ore:paper>, <ore:paper>, <minecraft:leather>]);
recipes.removeShapeless(<minecraft:book>, [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>, <minecraft:string>, <tconstruct:pattern>, <tconstruct:pattern>]);
recipes.addShaped(<minecraft:book>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],[<minecraft:string>, <tconstruct:pattern>, <minecraft:leather>], [null, null, null]]);

// more leather sources
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:triceratops_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:allosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ankylosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:arthropleura_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:brachiosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ceratosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:citipati_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:compsognathus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:confuciusornis_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:crassigyrinus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:deinonychus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dilophosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:diplocaulus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:diplodocus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dodo_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:dryosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:edaphosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:elasmotherium_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:gallimimus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:gastornis_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:henodus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:icthyosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:kelenken_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:liopleurodon_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:mammoth_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:megalania_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:megaloceros_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:meganeura_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:mosasaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:ornitholestes_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:pachycephalosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:parasaurolophus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:phorusrhacos_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:platybelodon_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:plesiosaur_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:pterosaur_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:quagga_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:sarcosuchus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:smilodon_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:spinosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:stegosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:therizinosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:tiktaalik_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:titanis_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:triceratops_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:tyrannosaurus_cooked>, 100);
mods.tconstruct.Drying.addRecipe(<minecraft:leather>,<fossil:velociraptor_cooked>, 100);
