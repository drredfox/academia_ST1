//DESCRIPCION:	Escribe un mensaje en el canal de radio de la facción del jugador, desde el origen seleccionado, siendo origenes aceptados BASE, PAPA_BEAR, AIRBASE.
//REQUIERE:		-
//ARGUMENTOS:	MENSAJE:mensaje a transmitir por el chat.
//				ORIGEN: origenes aceptados BASE, PAPA_BEAR, AIRBASE
//COMPILACION:	call compile preprocessFileLineNumbers "ruta\fnc_globalsidechat.sqf";
//LLAMADA:		[["MENSAJE", "ORIGEN"],"fnc_globalsidechat",true,false] spawn BIS_fnc_MP;
//ACCION:		OBJETO addAction [("<t color=""#ed6b0b"">" + "Sidechat" + "</t>"), "[['MENSAJE', 'BASE'],'fnc_globalsidechat',true,false] spawn BIS_fnc_MP;"];

fnc_globalsidechat = {
private ["_msg","_user","_side"];
_msg = _this select 0;
_side = side player;
_user = _this select 1;
[_side,_user] sideChat _msg;
};