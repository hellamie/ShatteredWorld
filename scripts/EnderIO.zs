import minetweaker.item.IItemStack;

########################################################################################################################
# Blocks
########################################################################################################################
# BC Additions
val bcAdditionCoilBasic             = <bcadditions:blockCoilBasic>;

# Botany
val botanyGlassDeepBlue             = <Botany:stained:2>;

# EnderIO
val enderioGeneratorStirling        = <EnderIO:blockStirlingGenerator>;
val enderioGeneratorCombustion      = <EnderIO:blockCombustionGenerator>;
val enderioGeneratorZombie          = <EnderIO:blockZombieGenerator>;
val enderioSolarpanelsmall          = <EnderIO:blockSolarPanel>;
val enderioSolarpanel               = <EnderIO:blockSolarPanel:1>;
val enderioChassis                  = <EnderIO:itemMachinePart>;
val enderioTank                     = <EnderIO:blockTank>;

# Forest Day
val forestDayFurnaceCoke            = <Forestday:machine.furnace>;

# Extra Utilities
val extUtilGlassThickened           = <ExtraUtilities:decorativeBlock2>;

# Thermal Expansion
val thermExpGlassLumiumHardened     = <ThermalExpansion:Glass:1>;

val enderioBlockOf = [
  <EnderIO:blockIngotStorage>,		/* 0 - Electrical Steel */
  <EnderIO:blockIngotStorage:1>,	/* 1 - Energetic Alloy */
  <EnderIO:blockIngotStorage:2>,	/* 2 - Vibrant Alloy */
  <EnderIO:blockIngotStorage:3>,	/* 3 - Redstone Alloy */
  <EnderIO:blockIngotStorage:4>,	/* 4 - Conductive Iron */
  <EnderIO:blockIngotStorage:5>,	/* 5 - Pulsating Iron */
  <EnderIO:blockIngotStorage:6>,	/* 6 - Dark Steel */
  <EnderIO:blockIngotStorage:7>		/* 7 - Soularium */
] as IItemStack[];

########################################################################################################################
# Items
########################################################################################################################

val enderioNuggets = [
  <EnderIO:itemMaterial:3>,	/* 0 - Pulsating Iron */
  <EnderIO:itemMaterial:4>	/* 1 - Vibrant Alloy */
] as IItemStack[];

val enderioIngots = [
  <EnderIO:itemAlloy>,		/* 0 - Electrical Steel */
  <EnderIO:itemAlloy:1>,	/* 1 - Energetic Alloy */
  <EnderIO:itemAlloy:2>,	/* 2 - Vibrant Alloy */
  <EnderIO:itemAlloy:3>,	/* 3 - Redstone Alloy */
  <EnderIO:itemAlloy:4>,	/* 4 - Conductive Iron */
  <EnderIO:itemAlloy:5>,	/* 5 - Pulsating Iron */
  <EnderIO:itemAlloy:6>,	/* 6 - Dark Steel */
  <EnderIO:itemAlloy:7>		/* 7 - Soularium */
] as IItemStack[];

val enderioBasicGear 		= <EnderIO:itemMachinePart:1>;
val enderioZombieElectrode      = <EnderIO:itemFrankenSkull>;

# Forest Day
val forestDayWoodGear = <Forestday:fd.item.gear.wood:1>;

# Advanced Generators               
val advGenePowerIO                  = <advgenerators:PowerIO>;

# Project Red
val projectRedConductivePlate       = <ProjRed|Core:projectred.core.part:1>;
val projectRedChipEnergized         = <ProjRed|Core:projectred.core.part:8>;
val projectRedChipSilicon           = <ProjRed|Core:projectred.core.part:7>;

# Buildcraft
val buildcraftGearIron              = <BuildCraft|Core:ironGearItem>;
val buildcraftFluidPipeIron         = <BuildCraft|Transport:item.buildcraftPipe.pipefluidsiron>;
val buildCraftChipPulsating         = <BuildCraft|Silicon:redstoneChipset:4>;
val buildCraftChipComp              = <BuildCraft|Silicon:redstoneChipset:6>;

# Redstone Arsenal
val rsArsenalFluxCrystal            = <RedstoneArsenal:material:96>;

########################################################################################################################
# Ore Dictionary
########################################################################################################################

val odCobblestone = <ore:cobblestone>;

########################################################################################################################
# Custom Crafting Recipies - Shaped
########################################################################################################################

# Remove Nugget/Block to Ingot Crafting
for i, ingot in enderioIngots
{
  recipes.remove( ingot );
}

# Remove Ingot to Block Crafting
for i, block in enderioBlockOf
{
  recipes.remove( block );
}

# Changed Gear Crafting
recipes.remove( enderioBasicGear );
recipes.addShaped( enderioBasicGear, [ [ null, odCobblestone, null ], [ odCobblestone, forestDayWoodGear, odCobblestone ], [ null, odCobblestone, null ] ]);

# RF Generators
recipes.remove(enderioGeneratorStirling);
recipes.addShaped( enderioGeneratorStirling, [ [ bcAdditionCoilBasic, advGenePowerIO , bcAdditionCoilBasic ], [ projectRedConductivePlate, buildcraftGearIron, projectRedConductivePlate ], [ enderioChassis, forestDayFurnaceCoke, enderioChassis ] ]);				 

recipes.remove(enderioGeneratorCombustion);				 
recipes.addShaped( enderioGeneratorCombustion, [ [ bcAdditionCoilBasic, advGenePowerIO , bcAdditionCoilBasic ], [ projectRedConductivePlate, buildcraftFluidPipeIron, projectRedConductivePlate ], [ enderioTank, forestDayFurnaceCoke, enderioTank ] ]);

recipes.remove(enderioGeneratorZombie);				 
recipes.addShaped( enderioGeneratorZombie, [ [ bcAdditionCoilBasic, advGenePowerIO , bcAdditionCoilBasic ], [ projectRedConductivePlate, enderioZombieElectrode, projectRedConductivePlate ], [ extUtilGlassThickened, forestDayFurnaceCoke, extUtilGlassThickened ] ]);

recipes.remove(enderioSolarpanelsmall);
recipes.addShaped( enderioSolarpanelsmall, [ [ projectRedChipEnergized, botanyGlassDeepBlue , projectRedChipEnergized ], [ buildCraftChipComp, botanyGlassDeepBlue, buildCraftChipComp ], [ projectRedChipSilicon, advGenePowerIO, projectRedChipSilicon ] ]);

recipes.remove(enderioSolarpanel);
recipes.addShaped( enderioSolarpanel, [ [ buildCraftChipPulsating, thermExpGlassLumiumHardened , buildCraftChipPulsating ], [ rsArsenalFluxCrystal, thermExpGlassLumiumHardened, rsArsenalFluxCrystal ], [ enderioSolarpanelsmall, advGenePowerIO, enderioSolarpanelsmall ] ]);

########################################################################################################################
# Custom Crafting Recipies - Shapeless
########################################################################################################################

# Remove Ingot to Nugget Crafting
for i, nugget in enderioNuggets
{
  recipes.remove( nugget );
}

