fnc_veh_spawn = {
disableSerialization;
_spawn_veh=CurVeh createVehicle position spawnpos;
_spawn_veh setDir (direction spawnpos);
player moveInDriver _spawn_veh;
_spawn_veh engineOn true;
_spawn_veh addAction [("<t color=""#FF0000"">" + "Borrar vehiculo" + "</t>"), "[_this select 0] spawn fnc_delete", [], 3, false, true, "", "{alive _x} count crew _target == 0"];
_spawn_veh addAction [("<t color=""#FFFF00"">" + "Reparar/Rearmar/Repostar" + "</t>"), "[_this select 0] spawn fnc_repair", [], 3, false, true, "", "(driver _target) == player || gunner _target == player"];
if(_spawn_veh isKindof "Helicopter")then{_spawn_veh addAction [("<t color=""#D13DCF"">" + "Activar modo instructor" + "</t>"), "[_this select 0, _this select 2] spawn fnc_aca_actions", [], 3, false, true, "", "player in _target"];};
if(Curveh in UGV)then{player linkItem "B_UavTerminal";createVehicleCrew _spawn_veh;};
if(Curveh in UAV)then{player linkItem "B_UavTerminal";createVehicleCrew _spawn_veh;};
if(Curveh in UAV_Portatil)then{player linkItem "B_UavTerminal";createVehicleCrew _spawn_veh;};
};