//this addAction [("<t color=""#BFFF00"">" + "Ir a xxx" + "</t>"), "call fnc_teleport",[bandera,altura]];

fnc_teleport = {
private ["_caller","_target","_height"];
_caller = _this select 1;
_target = (_this select 3) select 0;
_height = (_this select 3) select 1;
_target = getPos _target;
_caller setPos[(_target select 0)+0.5, _target select 1, (_target select 2)+_height];
};