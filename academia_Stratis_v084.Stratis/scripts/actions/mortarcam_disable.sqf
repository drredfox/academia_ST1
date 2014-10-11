private ["_mortar","_unit","_actionid","_handlerindex"];
_unit = _this select 1;
_actionid = _this select 2;
_mortar = (_this select 3) select 0;
_handlerindex = (_this select 3) select 1;

_unit removeAction _actionid;
_mortar removeEventHandler ["fired",_handlerindex];

_mortar addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "thr\scripts\actions\mortarcam_enable.sqf"];