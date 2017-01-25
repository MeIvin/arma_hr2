//	Start doing shit
call compileFinal preprocessFileLineNumbers "mel\mel_fnc_init.sqf";
mel_housePos = call mel_fnc_getHousePos;
_mel_hostageArray = [mel_hos_1,mel_hos_2];

// amimations for the hostages
{
	_x playMoveNow "Acts_AidlPsitMstpSsurWnonDnon05";
	_x spawn mel_fnc_followStop;
} forEach _mel_hostageArray;


// in case some muppet blows up the radio station
{
	_x addMPEventHandler ["MPHit", {_this enableSimulation true;}];
} forEach [mel_sim_radio,mel_sim_phone,mel_sim_pc];


// call hosteages script
mel_housePos = [mel_housePos,_mel_hostageArray] call mel_fnc_moveHostages;
[mel_housePos] call mel_fnc_spawnBaddies;