params ["_object"];

[
/* 0 object */							_object,
/* 1 action title */					"command: Wait here!",
/* 2 idle icon */						"",
/* 3 progress icon */					"",
/* 4 condition to show */				"alive _target && ((_target distance _this) < 3) && (_target getVariable 'isFollowing')",
/* 5 condition for action */			"alive _target && ((_target distance _this) < 4) && (_target getVariable 'isFollowing')",
/* 6 code executed on start */			{},
/* 7 code executed per tick */			{},
/* 8 code executed on completion */		{
											[name (_this select 1), "Wait here!"] call BIS_fnc_showSubtitle;
											// set follow target (aka caller)
											(_this select 0) setVariable ["isFollowing", false, true];
										},
/* 9 code executed on interruption */	{},
/* 10 arguments */						[""],
/* 11 action duration */				0.5,
/* 12 priority */						9,
/* 13 remove on completion */			false,
/* 14 show unconscious */				false
] call bis_fnc_holdActionAdd;
