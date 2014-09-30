//DESCRIPCION:	Teleporta al jugador a la posicion y rumbo de un determinado objeto, con un pequeño oscurecimiento de pantalla estetico.
//COMPILACION	call compile preprocessFileLineNumbers "scripts\functions\fnc_teleport.sqf";
//LLAMADA:		[OBJETO] call fnc_teleport;

fnc_teleport = {
_pos=_this select 0;
closeDialog 0;
cutText ["","BLACK out",0.5];
player setPos position _pos;
player setDir direction _pos;
cutText ["","BLACK in",0.5];
};