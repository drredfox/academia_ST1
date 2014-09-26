if(var_vehicle_created) then {
	(var_new_vehicle select 0) addAction [("<t color=""#FF0000"">" + "Borrar vehiculo" + "</t>"), "scripts\actions\delete.sqf", [], 3, false, true, "", "{alive _x} count crew _target == 0"];
	(var_new_vehicle select 0) addAction [("<t color=""#FFFF00"">" + "Reparar/Rearmar/Repostar" + "</t>"), "scripts\actions\repair.sqf", [], 3, false, true, "", "(driver _target) == player || gunner _target == player"];

	if((var_new_vehicle select 0) isKindOf "Air") then {
		//Air vehicle
		(var_new_vehicle select 0) addAction [("<t color=""#D13DCF"">" + "Activar modo instructor" + "</t>"), "scripts\aca_air\vinstruct.sqf", [], 3, false, true, "", "((player in _target) && ((driver _target) != player))"];
	};
	var_new_vehicle = [];
	var_vehicle_created = false;
};