//DESCRIPCION:	Repara el vehiculo que se le pasa como variable (también puede ser usado en una accion)
//COMPILACION:	call compile preprocessFileLineNumbers "ruta\fnc_repair.sqf";
//LLAMADA:		[OBJETO] call fnc_repair;
//ACCION:		OBJETO addAction [("<t color=""COLOR"">" + "NOMBRE_ACCCION" + "</t>"), "call fnc_repair"];

fnc_repair = {
private ["_vehicle"];
_vehicle = _this select 0;
_vehicle setVehicleAmmo 1;
_vehicle setFuel 1;
_vehicle setDamage 0;
};