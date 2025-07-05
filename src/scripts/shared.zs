#priority 5
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;

function recipeRemapShaped(output as IItemStack, input as IIngredient[][], multiplier as int = 1) {
    recipes.remove(output);
    recipes.addShaped(output * multiplier, input);
}

function recipeRemapShapeless(output as IItemStack, input as IIngredient[]) {
    recipes.remove(output);
    recipes.addShapeless(output, input);
}

function recipeRemapRuneAltar(output as IItemStack, input as IIngredient[], time as int) {
    recipes.remove(output);
    mods.botania.RuneAltar.addRecipe(output, input, time);
}
