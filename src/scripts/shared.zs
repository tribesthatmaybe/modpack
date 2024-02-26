#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

function recipeRemapShaped(output as IItemStack, input as IIngredient[][]) {
  recipes.remove(output);
  recipes.addShaped(output, input);
}
