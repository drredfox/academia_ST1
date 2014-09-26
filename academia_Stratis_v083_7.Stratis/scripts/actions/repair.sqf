private ["_vehicle"];
_vehicle = _this select 0;
_vehicle setVehicleAmmo 1;
_vehicle setFuel 1;
if((damage _vehicle)!=1) then {
	_vehicle setDamage 0;
}
