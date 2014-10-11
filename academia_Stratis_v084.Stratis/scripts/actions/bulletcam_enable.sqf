//this addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_running"];
private ["_unit"];
_unit = _this select 1;
_unit addAction [("<t color=""#F2FF00"">" + "Desactivar bulletcam" + "</t>"), "thr\scripts\actions\bulletcam_disable.sqf"];
bulletcam_enabled = true;
bulletcam_ehindex = _unit addEventHandler ["fired", { [(_this select 6)] spawn THR_Bulletcam }];