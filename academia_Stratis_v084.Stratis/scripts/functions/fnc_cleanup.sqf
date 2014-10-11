//CALL: [repeating?,repeattime] spawn THR_cleanup;
//DESC: Executes a server cleanup
//RETR: -
fnc_cleanup = {
	private ["_repeat","_repeatTime","_bodycleanup","_locations"];

	//Parameters
	_repeat = _this select 0;
	_repeatTime = _this select 1;	//Time between cleanups (in minutes)

	//Script
	_repeatTime = _repeatTime*60;

	_bodycleanup =
	{
		hideBody (_this select 0);
		sleep 5;
		deleteVehicle (_this select 0);
	};

	_locations = [flag_kamino,flag_kamino_ld,flag_air,flag_urb];
	if(_repeat) then {
		while{true} do {

			sleep _repeatTime;

			//Delete dead units
			{
				[_x] spawn _bodycleanup;
			} forEach allDead;

			//Delete objects;
			{
				{
					deleteVehicle _x;
				} forEach nearestObjects [getpos _x,["WeaponHolder","GroundWeaponHolder"],5000];
			} forEach _locations;

			//Delete destroyed vehicles
			{
				{
					if(damage _x == 1) then {
						deleteVehicle _x;
					};
				} forEach nearestObjects [getpos _x,["AllVehicles"],5000];
			} forEach _locations;

			//Send info to clients
			[2,"THR_GlobalHint",true,false] spawn BIS_fnc_MP;
		};
	} else {
		//Delete dead units
		{
			[_x] spawn _bodycleanup;
		} forEach allDead;

		//Delete objects;
		{
			{
				deleteVehicle _x;
			} forEach nearestObjects [getpos _x,["WeaponHolder","GroundWeaponHolder"],5000];
		} forEach _locations;

		//Delete destroyed vehicles
		{
			{
				if(damage _x == 1) then {
					deleteVehicle _x;
				};
			} forEach nearestObjects [getpos _x,["AllVehicles"],5000];
		} forEach _locations;

		//Send info to clients
		[2,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;
	};
};