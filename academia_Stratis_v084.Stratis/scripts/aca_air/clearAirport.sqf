//this addAction ["Limpiar aeropuerto", "scripts\clearAirport.sqf"];
private ["_nearobj","_vpos"];
_vpos = getMarkerPos "AirMain";
_nearobj = nearestObjects [_vpos, ["Air"], 500]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;