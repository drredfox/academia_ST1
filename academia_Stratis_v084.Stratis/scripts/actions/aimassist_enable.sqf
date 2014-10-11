//this addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\enableAimAssist.sqf", [], 3, false, true, "", "!THR_draw"];
if(isDedicated)	exitWith {}; 
[] spawn THR_Popup_AimAssist;