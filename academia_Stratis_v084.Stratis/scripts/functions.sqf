//ST1 - Auxiliar functions compilation
//-------------------------------------------------------------

//Funciones Genericas
call compile preprocessFileLineNumbers "scripts\functions\fnc_generic.sqf";

//Sidechat Global
call compile preprocessFileLineNumbers "scripts\functions\fnc_globalsidechat.sqf";

//Ayuda al apuntado
call compile preprocessFileLineNumbers "scripts\functions\fnc_infantryAssist.sqf";

//Galeria de Tiro
call compile preprocessFileLineNumbers "scripts\functions\fnc_targetTraining.sqf";

//Teleport
call compile preprocessFileLineNumbers "scripts\functions\fnc_teleport.sqf";

//Salto HALO
call compile preprocessFileLineNumbers "scripts\functions\fnc_halo_jump.sqf";

//Borrar Vehiculos
call compile preprocessFileLineNumbers "scripts\functions\fnc_delete.sqf";

//Reparar Vehiculos
call compile preprocessFileLineNumbers "scripts\functions\fnc_repair.sqf";

//Limpieza de Servidor
call compile preprocessFileLineNumbers "scripts\functions\fnc_cleanup.sqf";

//Urbantraining
//call compile preprocessFileLineNumbers "scripts\functions\fnc_urbanTraining.sqf";

//Spawn Vehiculos
call compile preprocessFileLineNumbers "scripts\functions\fnc_spawn_menu.sqf";
call compile preprocessFileLineNumbers "scripts\functions\fnc_preview.sqf";
call compile preprocessFileLineNumbers "scripts\functions\fnc_veh_spawn.sqf";