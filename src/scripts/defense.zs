import crafttweaker.item.IItemStack;
// vanilla shield
recipes.remove(<minecraft:shield>);
recipes.addShaped(<minecraft:shield>, [[null, null, <conarm:armor_plate>.withTag({Material: "wood"})],
				       [null, <tconstruct:binding>.withTag({Material: "wood"}), <conarm:armor_trim>.withTag({Material: "wood"})],
				       [null, <tconstruct:tool_rod>.withTag({Material: "iron"}), <conarm:armor_plate>.withTag({Material: "wood"})]]);
recipes.remove(<botania:manasteelhelm>);
recipes.addShaped(<botania:manasteelhelm>, [[null, null, null],
					    [<botania:manaresource>, <conarm:helmet_core>.withTag({Material: "manasteel"}), <botania:manaresource:7>],
					    [<conarm:armor_trim>.withTag({Material: "manasteel"}), null, <conarm:armor_trim>.withTag({Material: "manasteel"})]]);
recipes.remove(<botania:terrasteelhelm>);
recipes.addShaped(<botania:terrasteelhelm>, [[null, null, null],
					     [<botania:manaresource:4>, <conarm:helmet_core>.withTag({Material: "terrasteel"}), <botania:manaresource:4>],
					     [<conarm:armor_trim>.withTag({Material: "terrasteel"}), null, <conarm:armor_trim>.withTag({Material: "terrasteel"})]]);
recipes.remove(<botania:elementiumhelm>);
recipes.addShaped(<botania:elementiumhelm>, [[null, null, null],
					     [<botania:manaresource:7>, <conarm:helmet_core>.withTag({Material: "elementium"}), <botania:manaresource>],
					     [<conarm:armor_trim>.withTag({Material: "elementium"}), null, <conarm:armor_trim>.withTag({Material: "elementium"})]]);

recipes.remove(<botania:manasteelchest>);
recipes.addShaped(<botania:manasteelchest>, [[null, null, null],
					     [<conarm:armor_plate>.withTag({Material: "manasteel"}), <conarm:chest_core>.withTag({Material: "manasteel"}),
					     					      <conarm:armor_plate>.withTag({Material: "manasteel"})],
					     [<conarm:armor_trim>.withTag({Material: "manasteel"}), <conarm:armor_plate>.withTag({Material: "manasteel"}),
					     					     <conarm:armor_trim>.withTag({Material: "manasteel"})]]);
recipes.remove(<botania:terrasteelchest>);
recipes.addShaped(<botania:terrasteelchest>, [[null, null, null],
					     [<conarm:armor_plate>.withTag({Material: "terrasteel"}), <conarm:chest_core>.withTag({Material: "terrasteel"}),
					     					      <conarm:armor_plate>.withTag({Material: "terrasteel"})],
					     [<conarm:armor_trim>.withTag({Material: "terrasteel"}), <conarm:armor_plate>.withTag({Material: "terrasteel"}),
					     					     <conarm:armor_trim>.withTag({Material: "terrasteel"})]]);

recipes.remove(<botania:elementiumchest>);
recipes.addShaped(<botania:elementiumchest>, [[null, null, null],
					     [<conarm:armor_plate>.withTag({Material: "elementium"}), <conarm:chest_core>.withTag({Material: "elementium"}),
					     					      <conarm:armor_plate>.withTag({Material: "elementium"})],
					     [<conarm:armor_trim>.withTag({Material: "elementium"}), <conarm:armor_plate>.withTag({Material: "elementium"}),
					     					     <conarm:armor_trim>.withTag({Material: "elementium"})]]);
recipes.remove(<botania:manasteellegs>);
recipes.addShaped(<botania:manasteellegs>, [[null, null, null],
					   [<conarm:armor_trim>.withTag({Material: "manasteel"}), <conarm:leggings_core>.withTag({Material: "manasteel"}),
					   					   <conarm:armor_trim>.withTag({Material: "manasteel"})],
					   [<conarm:armor_plate>.withTag({Material: "manasteel"}), <conarm:armor_trim>.withTag({Material: "manasteel"}),
					   					    <conarm:armor_plate>.withTag({Material: "manasteel"})]]);
recipes.remove(<botania:terrasteellegs>);
recipes.addShaped(<botania:terrasteellegs>, [[null, null, null],
					   [<conarm:armor_trim>.withTag({Material: "terrasteel"}), <conarm:leggings_core>.withTag({Material: "terrasteel"}),
					   					   <conarm:armor_trim>.withTag({Material: "terrasteel"})],
					   [<conarm:armor_plate>.withTag({Material: "terrasteel"}), <conarm:armor_trim>.withTag({Material: "terrasteel"}),
					   					    <conarm:armor_plate>.withTag({Material: "terrasteel"})]]);
recipes.remove(<botania:elementiumlegs>);
recipes.addShaped(<botania:elementiumlegs>, [[null, null, null],
					   [<conarm:armor_trim>.withTag({Material: "elementium"}), <conarm:leggings_core>.withTag({Material: "elementium"}),
					   					   <conarm:armor_trim>.withTag({Material: "elementium"})],
					   [<conarm:armor_plate>.withTag({Material: "elementium"}), <conarm:armor_trim>.withTag({Material: "elementium"}),
					   					    <conarm:armor_plate>.withTag({Material: "elementium"})]]);
recipes.remove(<botania:manasteelboots>);
recipes.addShaped(<botania:manasteelboots>, [[null, null, null],
					    [null, <conarm:armor_plate>.withTag({Material: "manasteel"}), null],
					    [<conarm:armor_trim>.withTag({Material: "manasteel"}), <conarm:boots_core>.withTag({Material: "manasteel"}),
					    					    <conarm:armor_trim>.withTag({Material: "manasteel"})]]);
recipes.remove(<botania:terrasteelboots>);
recipes.addShaped(<botania:terrasteelboots>, [[null, null, null],
					    [null, <conarm:armor_plate>.withTag({Material: "terrasteel"}), null],
					    [<conarm:armor_trim>.withTag({Material: "terrasteel"}), <conarm:boots_core>.withTag({Material: "terrasteel"}),
					    					    <conarm:armor_trim>.withTag({Material: "terrasteel"})]]);
recipes.remove(<botania:elementiumboots>);
recipes.addShaped(<botania:elementiumboots>, [[null, null, null],
					    [null, <conarm:armor_plate>.withTag({Material: "elementium"}), null],
					    [<conarm:armor_trim>.withTag({Material: "elementium"}), <conarm:boots_core>.withTag({Material: "elementium"}),
					    					    <conarm:armor_trim>.withTag({Material: "elementium"})]]);
