import crafttweaker.item.IItemStack;

var tooMuchEU2 = [
    <extrautils2:passivegenerator>,  // not using any eu2 gp
    <extrautils2:passivegenerator:1>,
    <extrautils2:passivegenerator:2>,
    <extrautils2:passivegenerator:3>,
    <extrautils2:passivegenerator:4>,
    <extrautils2:passivegenerator:5>,
    <extrautils2:passivegenerator:6>,
    <extrautils2:passivegenerator:7>,
    <extrautils2:passivegenerator:8>,
    <extrautils2:poweroverload>,
    <extrautils2:decorativesolid:8>,
    <extrautils2:ingredients:1>,
    <extrautils2:interactionproxy>,
    <extrautils2:powerbattery>,
    <extrautils2:powertransmitter>,
    <extrautils2:ingredients:13>,
    <extrautils2:redstonelantern>,
    <extrautils2:ingredients:4>,
    <extrautils2:enderlilly>,
    <extrautils2:powermanager>,
    <extrautils2:scanner>,
    <extrautils2:indexerremote>,
    <extrautils2:ingredients:16>,
    <extrautils2:ingredients:15>,
    <extrautils2:lawsword>,
    <extrautils2:opinium:5>,
    <extrautils2:opinium:8>,
    <extrautils2:opinium:7>,
    <extrautils2:opinium>,
    <extrautils2:opinium:7>,
    <extrautils2:opinium:1>,
    <extrautils2:opinium:3>,
    <extrautils2:ingredients:6>,
    <extrautils2:ingredients:7>,
    <extrautils2:ingredients:8>,
    <extrautils2:ingredients:9>,
    <extrautils2:redstoneclock>,
    <extrautils2:user>,
    <extrautils2:decorativesolid>,
    <extrautils2:trashchest>,            // using cyclic
    <extrautils2:drum:0>,                // using ie/mek for fluid
    <extrautils2:drum:1>,
    <extrautils2:drum:2>,
    <extrautils2:drum:3>,
    <extrautils2:drum:4>,
    <extrautils2:snowglobe>,
    <extrautils2:snowglobe:1>,
//    <extrautils2:decorativesolidwood>,
//    <extrautils2:decorativesolidwood:1>,
//    <extrautils2:decorativesolidwood:2>,
    <extrautils2:glasscutter>,
    <extrautils2:endershard>,
    <extrautils2:ingredients>,
    <extrautils2:resonator>,
    <extrautils2:decorativesolid:1>,
    <extrautils2:decorativesolid:2>,
    <extrautils2:decorativesolid:5>,
    <extrautils2:decorativesolid:6>,
    <extrautils2:decorativesolid:7>,
    <extrautils2:filter>,
    <extrautils2:filterfluids>,
    <extrautils2:opinium:2>,
    <extrautils2:opinium:4>,
    <extrautils2:opinium:6>,
    <extrautils2:ingredients:2>,
    <extrautils2:grocket>,
    <extrautils2:grocket:1>,
    <extrautils2:grocket:2>,
    <extrautils2:grocket:3>,
    <extrautils2:grocket:4>,
    <extrautils2:grocket:5>,
    <extrautils2:grocket:6>,
    <extrautils2:decorativesolid:3>,
    <extrautils2:pipe>
] as IItemStack[];

for widget in tooMuchEU2 {
  mods.jei.JEI.removeAndHide(widget);
}
