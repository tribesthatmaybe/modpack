import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

// Some high end resources will occasionally drop from certain desert plants
Dropt.list("desert_plant_fancy")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([<plants2:desert_0:5>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(95))
            .items([<plants2:desert_0:5>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<minecraft:blaze_rod>])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<plants2:desert_0:2>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(85))
            .items([<plants2:desert_0:2>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(15))
            .items([<harvestcraft:mustardseeditem>])
        )
   );

// Most plants will drop some moopy stuff
var moopPlants = [
  <plants2:desert_0:10>,
  <plants2:desert_1>,
  <plants2:desert_0:9>,
  <plants2:desert_1:1>,
  <plants2:desert_0:8>,
  <plants2:desert_0>,
  <plants2:desert_0:4>,
  <plants2:desert_0:1>,
  <plants2:desert_0:12>,
  <plants2:desert_1:3>,
  <plants2:desert_1:2>,
  <plants2:desert_0:13>
] as IItemStack[];

var moopyPlantsDropt = Dropt.list("desert_moopy_plants").priority(0);
for plant in moopPlants {
  moopyPlantsDropt = moopyPlantsDropt.add(Dropt.rule()
                   .matchDrops([plant])
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(80))
                        .items([plant])
                   )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(10))
                        .items([plant, <minecraft:stick>])
                    )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(5))
                        .items([plant, <minecraft:string>])
                    )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(5))
                        .items([plant, <immersiveengineering:metal:21>])
                    )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(3))
                        .items([plant, <minecraft:iron_nugget>])
                    )
                 );
}

// it's amazing what you find in piles of playa dust
Dropt.list("playa_dust_small")
    .priority(0)
    .add(Dropt.rule()
        .matchBlocks(["weather2:sand_layer:1","weather2:sand_layer:2","weather2:sand_layer:3"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(90))
            .items([<weather2:sand_layer_placeable>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<weather2:sand_layer_placeable>, <minecraft:feather>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(3))
            .items([<weather2:sand_layer_placeable>, <minecraft:string>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(2))
            .items([<weather2:sand_layer_placeable>, <minecraft:iron_ingot>])
        )
    );
Dropt.list("playa_dust_large")
    .priority(0)
    .add(Dropt.rule()
        .matchBlocks(["weather2:sand_layer:4","weather2:sand_layer:5","weather2:sand_layer:6"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(75))
            .items([<weather2:sand_layer_placeable>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<weather2:sand_layer_placeable>, <minecraft:feather>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10))
            .items([<weather2:sand_layer_placeable>, <mekanism:sawdust>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<weather2:sand_layer_placeable>, <minecraft:iron_ingot>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<weather2:sand_layer_placeable>, <immersiveengineering:metal:21>])
        )
);
