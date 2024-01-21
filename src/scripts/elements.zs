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
