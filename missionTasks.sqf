case "MEL_objHos1": {
	if (_taskState == "") then {
		[
			west,
			_taskID,
			[
				"Location: Unknown <br/><br/>Find the journalist who is being held captive somewhere, in the town <marker name='Girna'>Girna</marker>. Since we do not know where he is located, or if he is alive, you have to search for him.",
				"Find the journalist.",
				"Locate"
			],
			MEL_hos1, //position
			true,
			3,
			true,
			"search",
			false
		] call BIS_fnc_taskCreate;
	} 
	else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};

case "MEL_objHos2": {
	if (_taskState == "") then {
		[
			west,
			_taskID,
			[
				"Location: Unknown <br/><br/>Find the other journalist who is being held captive somewhere, in the town <marker name='Girna'>Girna</marker>. Since we do not know where he is located, or if he is alive, you have to search for him.",
				"Find the other journalist.",
				"Locate"
			],
			MEL_hos2, //position
			false,
			3,
			true,
			"search",
			false
		] call BIS_fnc_taskCreate;
	} 
	else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};

case "MEL_objExt": {
	if (_taskState == "") then {
		[
			west,
			_taskID,
			[
				"Location: <marker name='Girna'>Beach</marker> <br/><br/>Extract from the mission area.",
				"Extract",
				"Extract"
			],
			"Girna3", //position
			false,
			1,
			true,
			"exit",
			false
		] call BIS_fnc_taskCreate;
	} 
	else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};
