private ["_unit","_vehicle","_actionid","_ids"];
_vehicle = _this select 0;
_unit = _this select 1; 
_actionid = _this select 2;
_ids = [];


_ids set [0,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo leve rotor trasero" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [1], 3, false, true, "", "(player in _target)"]];

_ids set [1,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo total rotor trasero" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [2], 3, false, true, "", "(player in _target)"]];

_ids set [2,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo rotor principal" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [3], 3, false, true, "", "(player in _target)"]];

_ids set [3,_vehicle addAction [("<t color=""#D69CD5"">" + "Desactivar daño" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [4], 3, false, true, "", "(player in _target)"]];

_ids set [4,_vehicle addAction [("<t color=""#D69CD5"">" + "Activar daño" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [5], 3, false, true, "", "(player in _target)"]];

_ids set [5,_vehicle addAction [("<t color=""#D69CD5"">" + "Reparar" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [6], 3, false, true, "", "(player in _target)"]];

_vehicle addAction [("<t color=""#D13DCF"">" + "Desactivar modo instructor" + "</t>"), "thr\scripts\aca_air\vinstructact.sqf", [0,_ids], 3, false, true, "", 
"(player in _target)"];

_vehicle removeAction _actionid; 

//Optional: available only if driver
//&& ((driver _target) != player)) 