params["_unit"];
private _type = typeOf _unit;

// define common gear
private _uniforms = ["U_B_CTRG_1","U_B_CTRG_3"];
private _headGear = ["H_Booniehat_khk","H_Booniehat_khk_hs","H_Cap_khaki_specops_UK","H_Cap_headphones","H_Watchcap_khk"];

// Melvin is awesome!
if (isMultiplayer) then {
	if ((getPlayerUID _unit) == "76561198001599663") then {
		_headGear = ["H_Cap_surfer"];
	};	
};


// diver
if ((_type isEqualTo "B_diver_TL_F") OR (_type isEqualTo "B_diver_F")) exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_B_Wetsuit";
	for "_i" from 1 to 4 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 4 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	_unit addVest "V_RebreatherB";

	_unit addBackpack "B_AssaultPack_blk";
	for "_i" from 1 to 10 do {_unit addItemToBackpack "30Rnd_9x21_Mag_SMG_02";};

	_unit addGoggles "G_Diving";

	// gives mp5 if tanoa, that other shit if not.
	if (395180 in (getDLCs 1)) then {
		_unit addWeapon "SMG_05_F"; 
	} else {
		_unit addWeapon "SMG_02_F"; 
	};

	_unit addPrimaryWeaponItem "muzzle_snds_L";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_ACO_grn_smg";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";
	_unit addWeapon "Binocular";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";
};

// Recon teamleader
if (_type isEqualTo "B_recon_TL_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};

	_unit addVest "V_PlateCarrierH_CTRG";
	_unit addItemToVest "MiniGrenade";
	_unit addItemToVest "HandGrenade";

	// weapon and ammo for apex vs non-apex
	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit addWeapon "arifle_SPAR_01_blk_F";
	} else {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addWeapon "arifle_MXC_Black_F";
	};

	_unit addHeadgear selectRandom(_headGear);

	_unit addPrimaryWeaponItem "optic_MRCO";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};

// recon medic
if (_type isEqualTo "B_recon_medic_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};

	_unit addVest "V_PlateCarrierL_CTRG";

	// weapon and ammo for apex vs non-apex
	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit addWeapon "arifle_SPAR_01_blk_F";
	} else {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addWeapon "arifle_MXC_Black_F";
	};

	_unit addHeadgear selectRandom(_headGear);
	_unit addBackpack "B_AssaultPack_blk";
	_unit addItemToBackpack "Medikit";

	_unit addPrimaryWeaponItem "optic_Holosight_blk_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};

// recon demo dude
if (_type isEqualTo "B_recon_exp_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};

	_unit addVest "V_PlateCarrierL_CTRG";
	_unit addItemToVest "MiniGrenade";
	_unit addItemToVest "HandGrenade";

	// weapon and ammo for apex vs non-apex
	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit addWeapon "arifle_SPAR_01_blk_F";
	} else {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addWeapon "arifle_MXC_Black_F";
	};

	_unit addHeadgear selectRandom(_headGear);

	_unit addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	_unit addItemToBackpack "ATMine_Range_Mag";

	_unit addPrimaryWeaponItem "optic_Holosight_blk_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};

// recon jtac/spotter
if (_type isEqualTo "B_recon_jtac_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};

	_unit addVest "V_PlateCarrierL_CTRG";
	_unit addItemToVest "MiniGrenade";
	_unit addItemToVest "HandGrenade";

	// weapon and ammo for apex vs non-apex
	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit addWeapon "arifle_SPAR_01_blk_F";
	} else {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addWeapon "arifle_MXC_Black_F";
	};

	_unit addHeadgear selectRandom(_headGear);

	_unit addBackpack "B_AssaultPack_rgr";
	_unit addItemToBackpack "Laserbatteries";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellBlue";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellOrange";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellPurple";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_yellow";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_red";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_blue";};

	_unit addPrimaryWeaponItem "optic_Nightstalker";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";
	_unit addWeapon "Laserdesignator_03";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};

// recon sharpshooter
if (_type isEqualTo "B_Recon_Sharpshooter_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
	
	_unit addVest "V_PlateCarrierL_CTRG";
	_unit addItemToVest "MiniGrenade";
	_unit addItemToVest "HandGrenade";
	for "_i" from 1 to 8 do {_unit addItemToVest "10Rnd_338_Mag";};
	
	_unit addHeadgear selectRandom(_headGear);

	_unit addBackpack "B_AssaultPack_rgr";
	_unit addItemToBackpack "Laserbatteries";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "10Rnd_338_Mag";};

	_unit addWeapon "srifle_DMR_02_F";
	_unit addPrimaryWeaponItem "muzzle_snds_338_black";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_MRCO";
	_unit addPrimaryWeaponItem "bipod_01_F_blk";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";
	_unit addWeapon "Laserdesignator_03";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};

// recon AR
if (_type isEqualTo "B_recon_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	_unit addItemToUniform "B_IR_Grenade";
	_unit addVest "V_PlateCarrierH_CTRG";
	
	_unit addHeadgear selectRandom(_headGear);

	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 3 do {_unit addItemToVest "200Rnd_556x45_Box_F";};
		_unit addWeapon "LMG_03_F";
	} else {
		_unit addBackpack "B_AssaultPack_rgr";
		_unit addItemToBackpack "150Rnd_762x54_Box_Tracer";
		for "_i" from 1 to 2 do {_unit addItemToVest "150Rnd_762x54_Box";};
		_unit addWeapon "LMG_Zafir_F";
	};
	
	_unit addPrimaryWeaponItem "optic_MRCO";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";

};

// recon grenadier
if (_type isEqualTo "B_recon_M_F") exitWith {
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	_unit forceAddUniform selectRandom(_uniforms);
	for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
	_unit addItemToUniform "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToUniform "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
	
	_unit addVest "V_PlateCarrierL_CTRG";
	for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	
	_unit addBackpack "B_AssaultPack_khk";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "UGL_FlareWhite_F";};

	if (395180 in (getDLCs 1)) then {
		for "_i" from 1 to 12 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
		_unit addWeapon "arifle_SPAR_01_GL_blk_F";
	} else {
		for "_i" from 1 to 10 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		_unit addWeapon "arifle_MX_GL_Black_F";
	};
	
	_unit addHeadgear selectRandom(_headGear);

	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_Holosight_blk_F";
	_unit addWeapon "hgun_Pistol_heavy_01_F";
	_unit addHandgunItem "muzzle_snds_acp";

	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "NVGoggles_OPFOR";
};