########################################
# Items
########################################

val inscriberSilicon		= <appliedenergistics2:item.ItemMultiMaterial:19>;
val inscriberLogic		= <appliedenergistics2:item.ItemMultiMaterial:15>;
val inscriberCalculation	= <appliedenergistics2:item.ItemMultiMaterial:13>;
val inscriberEnginering	= <appliedenergistics2:item.ItemMultiMaterial:14>;

########################################
# Inscriber
########################################

#Remove Copy Inscriber
mods.appeng.Inscriber.removeRecipe( inscriberSilicon );
mods.appeng.Inscriber.removeRecipe( inscriberLogic );
mods.appeng.Inscriber.removeRecipe( inscriberCalculation );
mods.appeng.Inscriber.removeRecipe( inscriberEnginering );