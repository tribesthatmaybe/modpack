import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;

// set realistic hardness for fancy doors
val malisisMetalDoors = [
    <malisisdoors:big_door_iron_3x3>,
    <malisisdoors:big_door_rusty_3x3>
] as IItemStack[];

val malisisWoodenDoors = [
    <malisisdoors:big_door_oak_3x3>,
    <malisisdoors:big_door_spruce_3x3>,
    <malisisdoors:big_door_acacia_3x3>,
    <malisisdoors:big_door_jungle_3x3>,
    <malisisdoors:big_door_birch_3x3>,
    <malisisdoors:big_door_dark_oak_3x3>
] as IItemStack[];

for door in malisisMetalDoors {
   door.hardness = 1;
}

// apparently you have to define the tool via block def?
for door in malisisWoodenDoors {
   var a_block as IBlockDefinition = door.asBlock().definition;
   a_block.setHarvestLevel("axe", 1);
}
