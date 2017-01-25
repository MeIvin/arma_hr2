call compileFinal preprocessFileLineNumbers "mel\mel_fnc_init.sqf";
call compileFinal preprocessFileLineNumbers "mel\mel_briefing.sqf";

{mel_hos_1 call _x} forEach [mel_act_untie, mel_act_following, mel_act_stopping];
{mel_hos_2 call _x} forEach [mel_act_untie, mel_act_following, mel_act_stopping];

player call compileFinal preprocessFileLineNumbers "mel\mel_gear.sqf";