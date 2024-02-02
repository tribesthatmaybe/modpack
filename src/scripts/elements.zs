import crafttweaker.item.IItemStack;

// ruby
mods.alchemistry.Dissolver.removeRecipe(<projectred-core:resource_item:200>);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:200>, false, 1, [
                                     [100, <alchemistry:compound:3> * 16, <alchemistry:element:24> * 4, <alchemistry:element:26> * 2, <alchemistry:element:22>]]);
// sapphire
mods.alchemistry.Dissolver.removeRecipe(<projectred-core:resource_item:201>);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:201>, true, 1, [
                                     [25, <alchemistry:compound:3> * 16, <alchemistry:element:24> * 4, <alchemistry:element:26> * 2, <alchemistry:element:22>],
                                     [25, <alchemistry:compound:3> * 16, <alchemistry:element:24> * 4, <alchemistry:element:26> * 2, <alchemistry:element:5>],
                                     [25, <alchemistry:compound:3> * 16, <alchemistry:element:24> * 4, <alchemistry:element:26> * 2, <alchemistry:element:82>],
                                     [25, <alchemistry:compound:3> * 16, <alchemistry:element:24> * 4, <alchemistry:element:26> * 2, <alchemistry:element:23>]]);
// peridot
mods.alchemistry.Dissolver.removeRecipe(<projectred-core:resource_item:202>);
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:202>, false, 1, [
                                     [100, <alchemistry:element:26> * 8, <alchemistry:element:12> * 2, <alchemistry:element:14> * 2]]);
// sky stone from spaaaaaaaace
mods.alchemistry.Dissolver.removeRecipe(<appliedenergistics2:sky_stone_block>);
mods.alchemistry.Dissolver.addRecipe(<appliedenergistics2:sky_stone_block>, false, 5, [
   [60, <alchemistry:element:26> * 2],   // iron
   [2, <alchemistry:element:22>],        // titanium
   [30, <alchemistry:element:28> * 2],   // nickel
   [5, <alchemistry:element:27>],        // platinum
   [15, <alchemistry:element:13>],       // aluminum
   [15, <alchemistry:element:79>],       // gold
   [15, <alchemistry:element:47>],       // silver
   [25, <alchemistry:element:41>]        // silicon
]);
mods.alchemistry.Dissolver.removeRecipe(<appliedenergistics2:sky_stone_chest>);
mods.alchemistry.Dissolver.addRecipe(<appliedenergistics2:sky_stone_chest>, false, 8, [
   [20, <alchemistry:element:26> * 2],   // iron
   [20, <alchemistry:element:22>],       // titanium
   [5, <alchemistry:element:28> * 2]     // nickel
]);
