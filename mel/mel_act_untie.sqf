params ["_object"];

[
/* 0 object */							_object,
/* 1 action title */					"Release",
/* 2 idle icon */						"",
/* 3 progress icon */					"",
/* 4 condition to show */				"alive _target && ((_target distance _this) < 3) && (isNil {_target getVariable 'isFollowing'})",
/* 5 condition for action */			"alive _target && ((_target distance _this) < 4) && (isNil {_target getVariable 'isFollowing'})",
/* 6 code executed on start */			{},
/* 7 code executed per tick */			{},
/* 8 code executed on completion */		{
											[name (_this select 0), "Thanks."] call BIS_fnc_showSubtitle;
											[(_this select 0), "Acts_AidlPsitMstpSsurWnonDnon_out"] remoteExec ["playMoveNow", 0, true];
											(_this select 0) setVariable ["isFollowing", false, true];
											(_this select 0) allowFleeing 0;
											(_this select 0) remoteExec ["MEL_fnc_followStop", 2];
											[_target, _actionID] remoteExec ["bis_fnc_holdActionRemove", 1, true];
										},
/* 9 code executed on interruption */	{[name (_this select 1), "[in German accent] I'll be back!!"] call BIS_fnc_showSubtitle},
/* 10 arguments */						[""],
/* 11 action duration */				0.4,
/* 12 priority */						9,
/* 13 remove on completion */			false,
/* 14 show unconscious */				false
] call bis_fnc_holdActionAdd;