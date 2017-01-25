params["_housePosArray","_hostages"];

_housePosArray = {
	// removing chosen pos from array
	_chosenPos = (selectRandom(_housePosArray));
	_housePosArray = _housePosArray - _chosenPos;

	// move hostages
	_x setPosATL _chosenPos;

	// debug marker?
	_debMarker = createMarker [format["mel_mrk_hos_%1", (name _x)], _x];
	_debMarker setMarkerShape "Icon";
	_debMarker setMarkerType "hd_dot";

	_housePosArray
} forEach _hostages;

_housePosArray