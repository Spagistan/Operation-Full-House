ffa_func_Cover = compile preprocessFileLineNumbers "Foxholes\fn_Cover.sqf";
ffa_func_digFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_digFoxhole.sqf";
ffa_func_initializeFoxhole = compile preprocessFileLineNumbers "Foxholes\fn_initializeFoxhole.sqf";
ffa_func_positionSelect = compile preprocessFileLineNumbers "Foxholes\fn_positionSelect.sqf";
ffa_func_userInput = compile preprocessFileLineNumbers "Foxholes\fn_userInput.sqf";
call ffa_func_userInput;

itemfactory addAction [
    "Manufacture crate (empty)",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

            private _crate = createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            clearWeaponCargoGlobal _crate;
            clearMagazineCargoGlobal _crate;
            clearItemCargoGlobal _crate;
            clearBackpackCargoGlobal _crate;

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture supply crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];

            private _crate1 = createVehicle ["rhs_7ya37_1_single", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            clearWeaponCargoGlobal _crate1;
            clearMagazineCargoGlobal _crate1;
            clearItemCargoGlobal _crate1;
            clearBackpackCargoGlobal _crate1;

            _crate1 addWeaponCargoGlobal ["rhs_weap_ak74m", 2];
            _crate1 addWeaponCargoGlobal ["rhs_weap_rpg75", 2];
            _crate1 addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N22_AK", 20];
            _crate1 addMagazineCargoGlobal ["rhs_60Rnd_545x39_7N22_AK", 10];
            _crate1 addMagazineCargoGlobal ["rhs_VOG25", 20];
            _crate1 addMagazineCargoGlobal ["rhs_GRD40_white", 10];
            _crate1 addMagazineCargoGlobal ["rhssaf_mag_br_m75", 10];
            _crate1 addMagazineCargoGlobal ["rhssaf_mag_brd_m83_white", 10];
            _crate1 addItemCargoGlobal ["ACE_elasticBandage", 20];
            _crate1 addItemCargoGlobal ["ACE_packingBandage", 20];
            _crate1 addItemCargoGlobal ["ACE_morphine", 5];
            _crate1 addItemCargoGlobal ["ACE_epinephrine", 5];
            _crate1 addItemCargoGlobal ["ACE_tourniquet", 5];
            _crate1 addItemCargoGlobal ["ACE_splint", 5];
            _crate1 addItemCargoGlobal ["ACE_EarPlugs", 3];
            _crate1 addItemCargoGlobal ["ACE_suture", 20];
            _crate1 addItemCargoGlobal ["ACE_salineIV_500", 5];
            _crate1 addMagazineCargoGlobal ["murshun_cigs_cigpack", 1];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture medical supply crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["ACE_medicalSupplyCrate_advanced", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture vehicle ammo crate",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["Box_East_AmmoVeh_F", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture concertina wire",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["ACE_ConcertinaWireCoil", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture fuel can",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["rhsusf_props_ScepterMFC_OD", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture spare wheel",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["ACE_Wheel", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];

itemfactory addAction [
    "Manufacture spare track",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        
        if (_target getVariable ["canManufacture", true]) then {
            _target setVariable ["canManufacture", false];
            
            createVehicle ["ACE_Track", getMarkerPos "marker_21", [], 0, "CAN_COLLIDE"];

            [_target] spawn {
                sleep 10;
                (_this select 0) setVariable ["canManufacture", true];
            };
        } else {
            hint "You must wait before using this again.";
        };
    },
    [],
    6,
    false,
    true,
    "",
    "_target distance _this < 8"
];