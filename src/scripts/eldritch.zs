import crafttweaker.item.IItemStack;

recipes.remove(<abyssalcraft:necronomicon>);
recipes.addShaped(<abyssalcraft:necronomicon>, [[<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:rotten_flesh>, <abyssalcraft:shadowfragment>],
					        [<minecraft:rotten_flesh>, <minecraft:book>, <minecraft:rotten_flesh>],
						[<tconstruct:binding>.withTag({Material: "wood"}), <minecraft:rotten_flesh>, <abyssalcraft:shadowfragment>]]);
