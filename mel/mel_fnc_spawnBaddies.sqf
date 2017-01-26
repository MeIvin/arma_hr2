params["_housePosArray"];

//enemy types
_enemyInf = [
	"O_G_Soldier_TL_F",
	"O_G_Soldier_SL_F",
	"O_G_Soldier_lite_F",
	"O_G_Soldier_LAT_F",
	"O_G_Soldier_F",
	"O_G_officer_F",
	"O_G_Soldier_M_F",
	"O_G_Soldier_engineer_F",
	"O_G_medic_F",
	"O_G_Soldier_AR_F",
	"O_G_Soldier_A_F"];

// spawn 20 badboyz
for "_i" from 1 to 30 do {
	_selectedUnit = selectRandom (_enemyInf);
	_selectedPos = selectRandom (_housePosArray);

	_housePosArray = _housePosArray - _selectedPos;

	_group = createGroup east;
	_unit = _group createUnit [_selectedUnit,_selectedPos,[],0,"CAN_COLLIDE"];
	_unit setUnitPos "UP";
};