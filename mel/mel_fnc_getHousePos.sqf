/*
	Creates an array of houses, then finds all the positions in the house and adds them to a pos array.
	Returns pos array
*/

private _houseArray = nearestObjects [(getMarkerPos "mel_mrk_town"), ["House", "Building"], 100];
private _posArray = [];
{
	_pos = _x buildingPos -1;
	_posArray append _pos;
} forEach _houseArray;


/*
// debugging
{
	_debMarker = createMarker [format["mel_mrk_pos_%1",_forEachindex], _x];
	_debMarker setMarkerShape "Icon";
	_debMarker setMarkerType "hd_dot";
} forEach _posArray;
*/

_posArray