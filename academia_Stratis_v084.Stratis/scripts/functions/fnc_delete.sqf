//DESCRIPCION:	Borra el vehiculo que se le pasa como variable.
//REQUIERE:		-
//ARGUMENTOS:	OBJETO: vehiculo a borrar.
//COMPILACION:	call compile preprocessFileLineNumbers "ruta\fnc_delete.sqf";
//LLAMADA:		[OBJETO] spawn fnc_delete;
//ACCION:		OBJETO addAction [("<t color=""COLOR"">" + "NOMBRE_ACCCION" + "</t>"), "[_this select 0] spawn fnc_delete"];

fnc_delete = {
private ["_vehicle"];
_vehicle = _this select 0;
deleteVehicle _vehicle;
};