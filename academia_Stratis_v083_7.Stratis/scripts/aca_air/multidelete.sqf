//this addAction ["Limpiar", "scripts\multidelete.sqf"];

private ["_nearobj", "_vpos"];
_vpos = getMarkerPos "hm_1";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_2";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_3";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_4";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_5";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_6";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_7";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_8";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_9";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;
_vpos = getMarkerPos "hm_10";
_nearobj = nearestObjects [_vpos, ["Air"], 10]; 
{
	if({alive _x} count crew _x == 0) then {
		deleteVehicle _x;
	}
} forEach _nearobj;