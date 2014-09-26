//CALL: [[parameters],"fnc_UrbanTraining",false,false] spawn BIS_fnc_MP;
//DESC: Starts urban training
//RETR: -
fnc_UrbanTraining =
{
	//TODO add patrols
	if(!isServer) exitWith {};
	fnc_UrbanTraining_Active = true;
	//Hint preparing training
	[0,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;

	private ["_enemyTypes","_streetEnemies","_houseEnemies"];

	//----------------------------------------------------------------------------------
	//-------------------------------Parameters
	_enemyTypes = ["O_Soldier_F","O_Soldier_AR_F","O_medic_F","O_Soldier_GL_F","O_soldier_M_F","O_Soldier_LAT_F"];
	_streetEnemies = 2;//max 50
	_houseEnemies = 0;	//theoric max 600, server max should be less
	//----------------------------------------------------------------------------------
	//----------------------------------------------------------------------------------

	//----------------------Create Block
	private ["_blockpositions","_block","_blocks"];
	_blockpositions = [[3218.762,5846.7471,0],[3219.9602,5846.6572,0],[3221.1951,5846.6035,0],[3222.447,5846.4785,0],[3223.6838,5846.4194,0],[3224.9622,5846.3335,0],[3226.2241,5846.2651,0],[3227.4995,5846.1729,0],[3228.8145,5845.9629,0],[3230.1423,5845.897,0],[3231.4705,5845.8447,0],[3232.8511,5845.6997,0],[3234.1528,5845.542,0]];
	_blocks = [];
	{
		_block = "Land_HBarrier_1_F" createVehicle [0,0,0];
		_block setPos _x;
		_blocks set [count _blocks, _block];
		sleep 0.5;
	} foreach _blockpositions;

	_block = nil;
	_blockpositions = nil;
	//----------------------

	//----------------------Get positions
	private ["_buildings","_buildingPos","_poscount","_pos","_streetPos"];
	//Get building positions
	_buildings = nearestObjects [getMarkerPos "UrbanTraining", ["HouseBase"], 220];
	_buildingPos = [];
	{
		_x setDamage 0;//Repair building in case its damaged or destroyed
		_poscount = 0;
		while {format ["%1", _x buildingpos _poscount] != "[0,0,0]"} do {

			_pos = _x buildingpos _poscount;
			_buildingPos set [count _buildingPos, _pos];
			_poscount = _poscount + 1;
			sleep 0.01;
		};
	} foreach _buildings;

	_buildings = nil;

	//Get street positions
	_streetPos = [];
	for "_x" from 1 to 50 do {
		_streetPos set [count _streetPos,getMarkerPos (format["urb_mk_%1",_x])];
	};
	//----------------------

	//----------------------Select positions
	private ["_selStreetPos","_nextPos","_selBuildingPos"];
	//Select street positions
	_selStreetPos = [];
	if(_streetEnemies>0) then {
		for "_x" from 0 to (_streetEnemies-1) do {
			_nextPos = _streetPos select (floor(random (count _streetPos)));
			if(_nextPos in _selStreetPos) then {
				_x = _x - 1;
			} else {
				_selStreetPos set [count _selStreetPos,_nextPos];
			};
		};
	};
	//Select building positions
	_selBuildingPos = [];
	if(_houseEnemies>0) then {
		for "_x" from 0 to (_houseEnemies-1) do {
			_nextPos = _buildingPos select (floor(random (count _buildingPos)));
			if(_nextPos in _selBuildingPos) then {
				_x = _x - 1;
			} else {
				_selBuildingPos set [count _selBuildingPos,_nextPos];
			};
		};
	};

	_streetPos = nil;
	_buildingPos = nil;
	//----------------------

	//----------------------Spawn enemies
	private ["_group","_unit"];
	_group = createGroup east;
	//Spawn the enemies
	{
		_enemyType = floor(random (count _enemyTypes));
		_unit = _group createUnit [_enemyTypes select _enemyType, [0,0,0], [], 0, "NONE"];
		_unit setPos _x;
		_unit setDir (floor(random 361));
		_unit setUnitPos "UP";
		doStop _unit;
		sleep 0.01;
	} foreach _selStreetPos;
	{
		_enemyType = floor(random (count _enemyTypes));
		_unit = _group createUnit [_enemyTypes select _enemyType, [0,0,0], [], 0, "NONE"];
		_unit setPos _x;
		_unit setDir (floor(random 361));
		_unit setUnitPos "UP";
		doStop _unit;
		sleep 0.01;
	} foreach _selBuildingPos;

	_selStreetPos = nil;
	_selBuildingPos = nil;
	//----------------------

	//Training ready
	[1,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;

	//----------------------Delete Blocks
	{
		deleteVehicle _x;
		sleep 0.5;
	} foreach _blocks;
	//----------------------

	sleep 5;
	[3,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;

	//Check in loop the number of units alive
	while{fnc_UrbanTraining_Active && (count (units _group) != 0)} do
	{
		sleep 5;
	};

	//Completed
	if(fnc_UrbanTraining_Active) then {
		[4,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;
		fnc_UrbanTraining_Active = false;
	//Canceled
	} else {
		[3,"fnc_GlobalHint",true,false] spawn BIS_fnc_MP;
		{
			deleteVehicle _x;
		} foreach (units _group);
	};
	deleteGroup _group;
};