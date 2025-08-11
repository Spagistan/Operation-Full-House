//[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
//player setVariable ["Saved_Loadout", getUnitLoadout player];
player setVariable ["Saved_LrRadio", (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings];