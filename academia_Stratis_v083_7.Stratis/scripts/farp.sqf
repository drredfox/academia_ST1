//Script de rearme, repostaje y reamunicionamiento por Dr.Redfox

_heli = _this;
_clase = typeOf _heli;
_factorTiempo = 100; //Tiempo maximo por bloque en segundos

//Bucle. Espera a que el motor del heli esté parado.
while {isEngineOn _heli} do {
	_heli vehicleChat "Por favor, apague el aparato.";
	sleep 10;
	};

//isEngineOn == false. Continua el script
_heli vehicleChat "Iniciando servicio.";
_heli setFuel 0; 		//Solucion temporal para evitar que despegue antes de finalizar

//Comprobar estado vehiculo. Si no se necesita, pasa al siguiente bloque.
if ((damage _heli) > 0) then {
		_heli vehicleChat "Reparando...";
		sleep (_factorTiempo*(damage _heli));
		_heli setDamage 0;
		} else {
			_heli vehicleChat "No necesitas reparaciones";
			};

//Comprobar municion. Si no necesita, pasa al siguiente
_municionActual = 0;
_municionTotal = 0;
{
_municionActual = _municionActual + (_x select 1);
_municionTotal = _municionTotal + (getNumber(configFile >> "CfgMagazines" >> (_x select 0) >> "count"));
} forEach magazinesAmmo _heli;
_municionHeli = _municionActual/_municionTotal; //Valor esperado <= 1

if (_municionHeli ==1) then {
	_heli vehicleChat "No necesitas munición."}
	else {
		_heli vehicleChat "Rearmando...";
		sleep (_factorTiempo*(1 - _municionHeli));
		_heli setVehicleAmmo 1;
		};

//Comprobar fuel. Si no se necesita, pasa al siguiente bloque.
if ((fuel _heli) < 0.9) then {
		_heli vehicleChat "Repostando...";
		sleep (_factorTiempo + (1 - (fuel _heli)));		//Multiplicar tiempo en lugar de sumar
		_heli setFuel 1;
		} else {
			_heli vehicleChat "No necesitas repostar.";
			};
_heli vehicleChat "Todo listo.";
//if (true) exitWith {hint "Script terminado";};
