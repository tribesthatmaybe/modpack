import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

val chocolate_drops = <plants2:desert_0:12>;
val blacktack_phacelia = <plants2:desert_0:4>;
val bristly_fiddleneck = <plants2:desert_0:7>;
val distant_scorpionweed = <plants2:desert_1>;
val chuparosa = <plants2:desert_0:13>;
val blazingstar = <plants2:desert_0:5>;
val browneyes = <plants2:desert_0:8>;
val brittlebush = <plants2:desert_0:10>;
val canaigre = <plants2:desert_0:11>;
val arizona_poppy = <plants2:desert_0:1>;
val neglected_scorpionweed = <plants2:desert_1:1>;
val san_angelo_yucca = <plants2:desert_1:3>;
val apache_plume = <plants2:desert_0>;
val bigelows_monkeyflower = <plants2:desert_0:3>;
val blue_flax = <plants2:desert_0:6>;
val asian_mustard = <plants2:desert_0:2>;
val coulters_jewelflower = <plants2:desert_0:15>;
val yellow_petal = <botania:petal:4>;
val brown_petal = <botania:petal:12>;

val somePlants = [
    apache_plume,
    coulters_jewelflower,
    chuparosa
] as IItemStack[];

// Some high end resources will occasionally drop from certain desert plants
Dropt.list("desert_plant_fancy")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([blazingstar])
//        .addDrop(Dropt.drop()
//            .selector(Dropt.weight(92))
//            .items([blazingstar])
//        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(3))
            .items([<minecraft:blaze_rod>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([yellow_petal])
        )
    )
    .add(Dropt.rule()
        .matchDrops([<plants2:desert_0:2>])
//        .addDrop(Dropt.drop()
//            .selector(Dropt.weight(90))
//            .items([<plants2:desert_0:2>])
//        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<harvestcraft:mustardseeditem>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([yellow_petal])
        )	
   )
   .add(Dropt.rule()
	.matchDrops([<plants2:desert_0:15>])
	.addDrop(Dropt.drop()
		.selector(Dropt.weight(3))
		.items([brown_petal])
	)
   );

var moopyDrops = Dropt.list("desert_moopy_drops").priority(0);
for plant in somePlants {
  moopyDrops = moopyDrops.add(Dropt.rule()
                   .matchDrops([plant])
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(80))
                        .items([plant])
                   )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(2))
                        .items([plant, <minecraft:string>])
                    )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(2))
                        .items([plant, <immersiveengineering:metal:21>])
                    )
                   .addDrop(Dropt.drop()
                        .selector(Dropt.weight(1))
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
            .selector(Dropt.weight(3))
            .items([<weather2:sand_layer_placeable>, <minecraft:feather>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
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
// sand is basically playa dust
Dropt.list("sand_tho")
    .priority(0)
    .add(Dropt.rule()
        .matchBlocks(["minecraft:sand"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<weather2:sand_layer_placeable> * 2])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<minecraft:string>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(1))
            .items([<minecraft:feather>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(9))
            .items([<minecraft:sand>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(35)
        )
    )
);


// black kauri wood in the block rock desert is very dry you see
Dropt.list("desert_kauri_wood_handicap")
    .priority(0)
    .add(Dropt.rule()
        .matchDrops([<plants2:log_0>])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(50))
            .items([<plants2:log_0>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
            .items([<mekanism:sawdust>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(25))
        )
    );

Dropt.list("desert_kauri_leaves_handicap")
    .priority(0)
    .add(Dropt.rule()
        .matchBlocks(["plants2:leaves_0:*"])
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(2))
            .items([<plants2:sapling_0>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(2))
            .items([<plants2:leaves_0>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10))
            .items([<immersiveengineering:material:4>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(5))
            .items([<mekanism:sawdust>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(1))
            .items([<minecraft:stick>])
        )
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(80))
        )
   );
