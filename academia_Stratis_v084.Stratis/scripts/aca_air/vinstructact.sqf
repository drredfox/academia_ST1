private ["_vehicle","_actionid","_option","_ids"];
_vehicle = _this select 0;
_actionid = _this select 2;
_option = _this select 3;

//Normal action
if (count _option == 1) then {
	_option = (_this select 3) select 0;
	switch (_option) do
	{
		case 1: {[-2,{ _this setHitPointDamage ["HitVRotor",.5]}, _vehicle] call CBA_fnc_globalExecute};//Fallo leve rotor trasero
		case 2: {[-2,{ _this setHitPointDamage ["HitVRotor", 1]}, _vehicle] call CBA_fnc_globalExecute};//Fallo total rotor trasero
		case 3: {[-2,{ _this setHitPointDamage ["HitHRotor", 1]}, _vehicle] call CBA_fnc_globalExecute};//Fallo rotor principal
		case 4: {[-2,{ _this allowdamage false}, _vehicle] call CBA_fnc_globalExecute};//Desactivar daño
		case 5: {[-2,{ _this allowdamage true}, _vehicle] call CBA_fnc_globalExecute};//Activar daño
		case 6: {_vehicle setDamage 0};//Reparar
	}
//Disable instructor
} else {
	_ids = (_this select 3) select 1;
	
	for [{_x=0},{_x<=(count _ids)},{_x=_x+1}] do
	{
		_vehicle removeAction (_ids select _x);
	};
	
	_vehicle removeAction _actionid;
	
	_vehicle addAction [("<t color=""#D13DCF"">" + "Activar modo instructor" + "</t>"), "thr\scripts\aca_air\vinstruct.sqf", [], 3, false, true, "", "((player in _target) && ((driver _target) != player))"];
};