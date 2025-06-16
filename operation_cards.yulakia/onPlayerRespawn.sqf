//[player, [missionNamespace, "inventory_var"]] call BIS_fnc_loadInventory;
//player setUnitLoadout (player getVariable ["Saved_Loadout",[]]);
_settings = player getVariable ["Saved_LrRadio",[]];
[call TFAR_fnc_activeLrRadio, _settings] call TFAR_fnc_setLrSettings;