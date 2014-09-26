//CALL:	this addAction [("<t color=""#FFFF00"">" + "Salto HALO ALTURA" + "</t>"), "call fnc_HALO",[ALTURA], 3, false, true, "", ""];
//DESC: Halo the player to the specified position and height on the map.
//RETR: -
fnc_HALO =
{
	private ["_height","_command"];
	_height = (_this select 3) select 0;
	openMap true;
	hintSilent "Click en el mapa para hacer el salto HALO";
	_command = "player setPos [_pos select 0, _pos select 1, " + format["%1",_height] + "]; openMap false; onMapSingleClick '';";
	onMapSingleClick format["%1",_command];
};