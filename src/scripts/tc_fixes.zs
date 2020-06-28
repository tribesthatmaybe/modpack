import crafttweaker.item.IItemStack;

// set some hardness for the tc mod
val trafficWidgets = [
    <trafficcontrol:cone>,
    <trafficcontrol:channelizer>,
    <trafficcontrol:drum>,
    <trafficcontrol:street_light_single>,
    <trafficcontrol:street_light_double>,
    <trafficcontrol:crossing_gate_base>
] as IItemStack[];

for widget in trafficWidgets {
   val a_widget as IItemStack = widget;
   a_widget.hardness = 1;
}
