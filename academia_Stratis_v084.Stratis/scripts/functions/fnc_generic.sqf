//CALL: [0,"THR_GlobalHint",true,false] spawn BIS_fnc_MP;
//DESC: Function to be called remotely and execute on all clients, shows a parameterized hint
//RETR: -
fnc_GlobalHint = 
{
	private ["_msg"];
	_msg = "SERVIDOR: ";
	switch(_this) do {
	
		case 0: {
			_msg = _msg + "Preparando Entrenamiento Urbano...";
		};	
		case 1: {
			_msg = _msg + "Entrenamiento Urbano preparado, puede comenzar";
		};
		case 2: {
			_msg = _msg + "Limpieza del servidor realizada correctamente";
		};
		case 3: {
			_msg = _msg + "Entrenamiento Urbano cancelado";
		};
		case 4: {
			_msg = _msg + "Entrenamiento Urbano completado correctamente";
		};
		case 5: {
			_msg = _msg + "Objetivo: Buscar y eliminar todas las fuerzas enemigas";
		};
		
		default {
			_msg = "Error, mensaje no definido"
		};
	};
	hint _msg;
};

//CALL: [[],"THR_PublicServerStatus",false,false] spawn BIS_fnc_MP;
//DESC: Broadcast server variables to check its status
//RETR: -
fnc_PublicServerStatus = {
	publicVariable "fnc_UrbanTraining_Active";
};
