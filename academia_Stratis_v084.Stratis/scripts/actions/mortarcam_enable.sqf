private["_mortar","_unit","_actionid","_handlerindex"];
_mortar = _this select 0;
_unit = _this select 1;
_actionid = _this select 2;
_handlerindex = _mortar addEventHandler ["fired", { [(_this select 6)] spawn THR_Bulletcam }];

_mortar removeAction _actionid;
_unit addAction [("<t color=""#F2FF00"">" + "Desactivar bulletcam de mortero" + "</t>"), "thr\scripts\actions\mortarcam_disable.sqf",[_mortar,_handlerindex], 3, false, true, "", ""];