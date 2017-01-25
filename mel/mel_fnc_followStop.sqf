while {true} do {
  scopeName "main";

  while {true} do {
    scopeName "fnc_follow";

    while {true} do {
      scopeName "fnc_stop";
      
      if (!alive _this) then {breakTo "main"}; // Breaks all scopes and return to "main"
      if ((_this getVariable "isFollowing")) then {breakOut  "fnc_stop"}; // Breaks scope named "fnc_stop"
      
      // stop
      _this stop true;
      
      uisleep  2;
    };
    
    // following
    // stance crouching
    _this setUnitPos "MIDDLE";
    // unstop
    _this stop false;
    // move to target
    _this move getpos (_this getVariable "fnc_caller");

    // put in boat
    if ((vehicle leader (_this getVariable "fnc_caller") != leader (_this getVariable "fnc_caller")) && (_this distance vehicle leader (_this getVariable "fnc_caller") < 15)) then {
      _this assignAsCargo (vehicle leader (_this getVariable "fnc_caller"));
      _this moveInCargo (vehicle leader (_this getVariable "fnc_caller"));
      _this setVariable ["isFollowing", false, true];  
      breakOut "main";
    };
  
  uiSleep  2;
  };
  breakOut "main";
};