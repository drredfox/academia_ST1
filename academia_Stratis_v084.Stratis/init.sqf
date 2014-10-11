//-------------------------------------------------------------------------------------------------
//Academia combinada ST1
//Versión del juego 		-> Arma 3 1.28
//Versión de la academia	-> 0.84.0
//-------------------------------------------------------------------------------------------------
//-Scripts externos utilizados
/*
ASOR Gear Selector - V1.41 -> http://www.armaholic.com/page.php?id=26181
*/
//-TODO---------------------------------------------------------------------
/*
-Limitar ASOR: excluir CAF Agressors
-Crear caja de armamento. Copiar funcionamiento "caja de ropa"
-estandarizar teletransportes de bandera
-campo de vehiculos
-remodelar funcionamiento de caja de ropa, precompilar?
-cambiar los hints globales por notificaciones centrales?
*/
//-----------------------------------------------------------------------------------------------

//Inicializar sistema medico
medico = (paramsArray select 0);
execVM "configXMedSys.sqf";

//Ocultar posicion en mapa
h = [] spawn {
	disableSerialization;
	while {true} do {
		waitUntil { visibleMap };
		_display = uiNamespace getVariable "RSCDiary";
		_ctrl = _display displayCtrl 1202;
		_ctrl ctrlEnable false;
		_ctrl ctrlsettextcolor [0,0,0,0];
		_ctrl ctrlSetTooltip "";
		_ctrl ctrlCommit 0;
		waitUntil { !visibleMap };
	};
};

//If in editor, delete AI
if(!isMultiplayer && isServer && !isDedicated) then {
	[] execVM "scripts\editor\deleteUnits.sqf";
	player allowDamage false;
	player setCaptive true;
};

removeAllWeapons player;
removeAllItems player;
removeBackpack player;
removeVest player;

//Init start
player enableSimulation false;//Block player movement while doing init
hintSilent "Academia ST1  Inicializando...";

//Call function compiler
_handle = execVM "scripts\functions.sqf";
waitUntil {scriptDone _handle};
//Call addactions to flags and boxes
_handle = execVM "scripts\addActions.sqf";
waitUntil {scriptDone _handle};
//Shooting Range
_handle = execVM "scripts\ShootingRange\ShootingRangeInit.sqf";
waitUntil {scriptDone _handle};

//Init periodic cleanup
[true,60] spawn fnc_cleanup;

//bulletcam script init
bulletcam_running = false;
bulletcam_ehindex = 0;
bulletcam_enabled = false;
//aim assist script init
THR_draw = false;
//bullet trajectory init
THR_BTrajectoryRunning = false;

//General Init finish
waitUntil{MCC_initDone};
hintSilent "Inicialización Completada";
player enableSimulation true;

//Post init
//sync server
[[],"fnc_PublicServerStatus",false,false] spawn BIS_fnc_MP;