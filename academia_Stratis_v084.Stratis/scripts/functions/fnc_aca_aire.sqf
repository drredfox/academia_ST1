fnc_aca_actions = {
private ["_vehicle","_actionid","_ids"];
_vehicle = _this select 0;
_actionid = _this select 1;
_ids = [];

_ids set [0,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo leve rotor trasero" + "</t>"), "[_this select 0, 1] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"]];
_ids set [1,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo total rotor trasero" + "</t>"), "[_this select 0, 2] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"]];
_ids set [2,_vehicle addAction [("<t color=""#D69CD5"">" + "Fallo rotor principal" + "</t>"), "[_this select 0, 3] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"]];
_ids set [3,_vehicle addAction [("<t color=""#D69CD5"">" + "Desactivar daño" + "</t>"), "[_this select 0, 4] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"]];
_ids set [4,_vehicle addAction [("<t color=""#D69CD5"">" + "Activar daño" + "</t>"), "[_this select 0, 5] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"]];
_vehicle addAction [("<t color=""#D13DCF"">" + "Desactivar modo instructor" + "</t>"), "[_this select 0, 6] spawn fnc_aca_aire", [], 3, false, true, "", "(player in _target)"];

_vehicle removeAction _actionid;

};

fnc_aca_aire = {
private ["_vehicle","_option"];
_vehicle = _this select 0;
_option = _this select 1;

switch (_option) do	{
		case 1: {_vehicle setHitPointDamage ["HitVRotor",0.5];};//Fallo leve rotor trasero
		case 2: {_vehicle setHitPointDamage ["HitVRotor",1];};//Fallo total rotor trasero
		case 3: {_vehicle setHitPointDamage ["HitHRotor",1];};//Fallo rotor principal
		case 4: {_vehicle allowdamage false;};//Desactivar daño
		case 5: {_vehicle allowdamage true;};//Activar daño
		//Disable instructor
		case 6: {removeAllActions _vehicle ;
				_vehicle addAction [("<t color=""#FF0000"">" + "Borrar vehiculo" + "</t>"), "[_this select 0] spawn fnc_delete", [], 3, false, true, "", "{alive _x} count crew _target == 0"];
				_vehicle addAction [("<t color=""#FFFF00"">" + "Reparar/Rearmar/Repostar" + "</t>"), "[_this select 0] spawn fnc_repair", [], 3, false, true, "", "(driver _target) == player || gunner _target == player"];
				_vehicle addAction [("<t color=""#D13DCF"">" + "Activar modo instructor" + "</t>"), "[_this select 0, _this select 2] spawn fnc_aca_actions", [], 3, false, true, "", "player in _target"];
				};
	};
};