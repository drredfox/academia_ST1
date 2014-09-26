//==================================================Settings
_FlagClass = "Flag_Red_F";
_TargetClass = "TargetP_Inf_Acc1_NoPop_F";
_PlatformHeight = -4; //-6 for ground level (no platform)

#define ASORSR_EnableLiveTargets  true
#define ASORSR_PenetrationTest false
#define ASORSR_TargetBottom 0.3317749
#define ASORSR_TargetTop 1.71163
#define ASORSR_TargetLeft -0.32959
#define ASORSR_TargetRight 0.32959

#define ASORSR_LiveTargetBottom 0
#define ASORSR_LiveTargetTop 1.8
#define ASORSR_LiveTargetLeft 0.32959
#define ASORSR_LiveTargetRight -0.32959

#define ASORSR_BulletsToMark 30

ASORSR_LiveTargets = [[8, "O_soldier_M_F"], [9, "O_soldier_M_F"], [10, "O_officer_F"]];
ASORSR_Instructors = ["asor_cmd", "cmd_2ic_medic"];
//=======================================================End of Settings

#include "ShootingRangeTraceFire.sqf";

ASORSR_fnc_GetOnlineInstructors = {
	private ["_onlineInstructors", "_instructor", "_x"];
	_onlineInstructors = [];
	{
		_instructor = missionNamespace getVariable _x;
		if(!isNil '_instructor') then {
			_onlineInstructors set [count _onlineInstructors, _instructor];
		};
	} forEach ASORSR_Instructors;
	_onlineInstructors
};
ASORSR_fnc_VectorRotate = {
	_vector = _this select 0;
	_rotateDegrees = _this select 1;
	_xPos = _vector select 0;
	_yPos = _vector select 1;
	_newVector = [_xPos, _yPos];
	if(count _vector > 2) then {_newVector set [2, _vector select 2]};
	_newVector set [ 0, (_xPos * cos(_rotateDegrees)) - (_yPos * sin(_rotateDegrees))];
	_newVector set [ 1, (_yPos * cos(_rotateDegrees)) + (_xPos * sin(_rotateDegrees))];
	_newVector
};


ASORSR_fnc_IndexOf = {
	private["_classname", "_array", "_keycolumn", "_value", "_i"];
	_classname = _this select 0;
	_array = _this select 1;
	_keycolumn = [_this, 2, 0, [2]] call BIS_fnc_param;
	_value = -1;

	for[{_i = 0}, {(_i < (count _array)) && ((_value) == -1)}, {_i = _i + 1}] do {
		if((_array select _i select _keycolumn) == _classname) then {
			_value = _i;
		};
	};
	_value
};
ASORSR_MarkedBullets = [];
ASORSR_MarkedTarget = objNull;
ASORSR_MarkedBulletsRaw = [];
ASORSR_fnc_ShowTargetHit = {
	disableSerialization;
	_distance = _this select 0;
	_xoff = _this select 1;
	_yoff = _this select 2;
	_ricochet = _this select 3;
	_bulletSpeed = _this select 4;
	_target = _this select 5;
	if(_target != ASORSR_MarkedTarget) then {
		ASORSR_MarkedTarget = _target;
		ASORSR_MarkedBullets = [];
		ASORSR_MarkedBulletsRaw = [];
	};
	while{(count ASORSR_MarkedBullets) >= ASORSR_BulletsToMark} do {
		ASORSR_MarkedBullets set [0, "DELETEME"];
		ASORSR_MarkedBullets = ASORSR_MarkedBullets - ["DELETEME"];
		ASORSR_MarkedBulletsRaw set [0, "DELETEME"];
		ASORSR_MarkedBulletsRaw = ASORSR_MarkedBulletsRaw - ["DELETEME"];
	};
	_xperc = 1-((_xoff + ASORSR_TargetRight) / (ASORSR_TargetRight * 2));
	_yperc = (_yoff - ASORSR_TargetBottom) / (ASORSR_TargetTop - ASORSR_TargetBottom);
	ASORSR_MarkedBullets = ASORSR_MarkedBullets + 	[[_xperc, _yperc]];	
	ASORSR_MarkedBulletsRaw = ASORSR_MarkedBulletsRaw + [[_xoff, _yoff, 0]];
	
	_furthestDistanceSq = 0;
	_furthestB1 = ASORSR_MarkedBulletsRaw select 0;
	_furthestB2 = ASORSR_MarkedBulletsRaw select 0;
	{
		_B1 = _x;
		{
			_B2 = _x;
			
			if((_B1 distanceSqr _B2) > _furthestDistanceSq) then {
				_furthestDistanceSq = (_B1 distanceSqr _B2);
				_furthestB1 = _B1;
				_furthestB2 = _B2;
			};
		} forEach ASORSR_MarkedBulletsRaw;
	
	} forEach ASORSR_MarkedBulletsRaw;
	_grouping = _furthestB1 distance _furthestB2;
	cutRsc ["ASORSR_TargetView", "PLAIN"];
	hint format ["%1 m\n %2 m/s\n %3mm agrupamiento (%4 impactos).", _distance, _bulletSpeed, _grouping*1000, count ASORSR_MarkedBulletsRaw];
	waitUntil {!(isNull (uiNamespace getVariable "ASORSR_TargetView"))};
	_display = (uiNamespace getVariable "ASORSR_TargetView");
	_idc = 900000;
	_texture = "images\redx.paa";
	_ctrlPos = ctrlPosition (_display displayCtrl 899998);
	_ctrlX = _ctrlPos select 0;
	_ctrlY = _ctrlPos select 1;
	_width = _ctrlPos select 2;
	_height = _ctrlPos select 3;
	//hint format ["%1", _ctrlPos];
	for "_i" from 0 to ((count ASORSR_MarkedBullets)-1) do {
		_mark = ASORSR_MarkedBullets select ((count ASORSR_MarkedBullets) - 1 - _i);
		_xpos = _ctrlX + ((_mark select 0) * _width) - (1/50);
		_ypos = _ctrlY + _height - ((_mark select 1) * _height) - (1/50);
		
		_control = _display displayCtrl _idc;
		_control ctrlSetPosition [_xpos, _ypos, (1/25), (1/25)];
		_control ctrlSetText _texture;
		_control ctrlCommit 0;
		_texture = "images\whitex.paa";
		_idc = _idc + 1;
	};
};
ASORSR_fnc_ShowLiveTargetHit = {
	disableSerialization;
	_distance = _this select 0;
	_xoff = _this select 1;
	_yoff = _this select 2;
	_ricochet = _this select 3;
	_bulletSpeed = _this select 4;
	_target = _this select 5;
	if(_target != ASORSR_MarkedTarget) then {
		ASORSR_MarkedTarget = _target;
		ASORSR_MarkedBullets = [];
		ASORSR_MarkedBulletsRaw = [];
	};
	while{(count ASORSR_MarkedBullets) >= ASORSR_BulletsToMark} do {
		ASORSR_MarkedBullets set [0, "DELETEME"];
		ASORSR_MarkedBullets = ASORSR_MarkedBullets - ["DELETEME"];
		ASORSR_MarkedBulletsRaw set [0, "DELETEME"];
		ASORSR_MarkedBulletsRaw = ASORSR_MarkedBulletsRaw - ["DELETEME"];
	};
	_xperc = 1-((_xoff + ASORSR_LiveTargetRight) / (ASORSR_LiveTargetRight * 2));
	_yperc = (_yoff - ASORSR_LiveTargetBottom) / (ASORSR_LiveTargetTop - ASORSR_LiveTargetBottom);
	ASORSR_MarkedBullets = ASORSR_MarkedBullets + 	[[_xperc, _yperc]];	
	ASORSR_MarkedBulletsRaw = ASORSR_MarkedBulletsRaw + [[_xoff, _yoff, 0]];
	
	_furthestDistanceSq = 0;
	_furthestB1 = ASORSR_MarkedBulletsRaw select 0;
	_furthestB2 = ASORSR_MarkedBulletsRaw select 0;
	{
		_B1 = _x;
		{
			_B2 = _x;
			
			if((_B1 distanceSqr _B2) > _furthestDistanceSq) then {
				_furthestDistanceSq = (_B1 distanceSqr _B2);
				_furthestB1 = _B1;
				_furthestB2 = _B2;
			};
		} forEach ASORSR_MarkedBulletsRaw;
	
	} forEach ASORSR_MarkedBulletsRaw;
	
	_grouping = _furthestB1 distance _furthestB2;
	cutRsc ["ASORSR_TargetView", "PLAIN"];
//	hint format ["%1m Target Hit.\n %2 meters/second.\n %3mm grouping (%4 hits).", _distance, _bulletSpeed, _grouping*1000, count ASORSR_MarkedBulletsRaw];

	waitUntil {!(isNull (uiNamespace getVariable "ASORSR_TargetView"))};
	_display = (uiNamespace getVariable "ASORSR_TargetView");
	_idc = 900000;
	_texture = "images\redx.paa";
	_bgctrl = (_display displayCtrl 899998);
	_ctrlPos = ctrlPosition _bgctrl;
	_bgctrl ctrlSetText format["images\%1_UI.paa", typeOf _target];
	_ctrlPos set [2, (1/20)*3];
	_bgctrl ctrlSetPosition _ctrlPos;
	_bgctrl ctrlCommit 0;
	_ctrlX = _ctrlPos select 0;
	_ctrlY = _ctrlPos select 1;
	_width = _ctrlPos select 2;
	_height = _ctrlPos select 3;
	
	//hint format ["%1", _ctrlPos];
	for "_i" from 0 to ((count ASORSR_MarkedBullets)-1) do {
		_mark = ASORSR_MarkedBullets select ((count ASORSR_MarkedBullets) - 1 - _i);
		_xpos = _ctrlX + ((_mark select 0) * _width) - (1/50);
		_ypos = _ctrlY + _height - ((_mark select 1) * _height) - (1/50);
		
		_control = _display displayCtrl _idc;
		_control ctrlSetPosition [_xpos, _ypos, (1/25), (1/25)];
		_control ctrlSetText _texture;
		_control ctrlCommit 0;
		_texture = "images\whitex.paa";
		_idc = _idc + 1;
	};
};


ASORSR_fnc_OnTargetHit = {
	{
	//hint format["%1", _this];
	_target = _x select 0;
	_shooter = _x select 1;
	if(_shooter != player) exitWith{};
	_bullet = _x select 2;
	_impactASL = _x select 3;
	_velocity = _x select 4;
	_selection = _x select 5;
	_ammo = _x select 6;
	_direction = _x select 7;
	_radius = _x select 8;
	_surface = _x select 9;
	_direct = _x select 10;
	_shooterowner = (owner _shooter);
	_targetASL = getPosASL _target;
	_offset = [(_targetASL vectorDiff _impactASL), getDir _target] call ASORSR_fnc_VectorRotate;
	[(getPosASL _shooter) distance _impactASL, _offset select 0, (_impactASL vectorDiff _targetASL) select 2, _direct, vectorMagnitude _velocity, _target] call ASORSR_fnc_ShowTargetHit;
	} foreach _this;
};
ASORSR_fnc_OnLiveTargetHitPart = {
	{
	//hint format["%1", _this];
	_target = _x select 0;
	_shooter = _x select 1;
	if(_shooter != player) exitWith{};
	_bullet = _x select 2;
	_impactASL = _x select 3;
	_velocity = _x select 4;
	_selection = _x select 5;
	_ammo = _x select 6;
	_direction = _x select 7;
	_radius = _x select 8;
	_surface = _x select 9;
	_direct = _x select 10;
	_shooterowner = (owner _shooter);
	_targetASL = getPosASL _target;
	_offset = [(_targetASL vectorDiff _impactASL), getDir _target] call ASORSR_fnc_VectorRotate;
	[(getPosASL _shooter) distance _impactASL, _offset select 0, (_impactASL vectorDiff _targetASL) select 2, _direct, vectorMagnitude _velocity, _target] call ASORSR_fnc_ShowLiveTargetHit;
	} foreach _this;
};

ASORSR_fnc_OnLiveTargetHit = {
	_target = _this select 0;
	_shooter = _this select 1;
	_damage = _this select 2;
	if(!(_shooter == player)) exitWith {};
	hint format["Impacto %1.\n Distancia %4m.\n %2%3 Daño.", getText (configFile >> "cfgVehicles" >> typeOf _target >> "displayName"), floor (_damage * 100), "%", player distance _target];
};

ASORSR_fnc_ClientInit = {
	private ['_shelves', '_targets', '_speakers'];
	if(!hasInterface) exitWith{};
	_shelves = _this select 0;
	_targets = _this select 1;
	_speakers = _this select 2;
	{
		_x addAction ["Seleccionar equipamiento", {execVM 'asorgs\open.sqf'}, [], 2, false, true];
		_x addAction ["Activar trayectoria balística", "[player, [], 15, 0,-1,-1, true] spawn hyp_fnc_traceFire", [], 1, false, true, "", "!(_this in hyp_var_tracer_tracedUnits)"];
		_x addAction ["Reiniciar trayectoria", { {[_x] call hyp_fnc_traceFireClear; } forEach hyp_var_tracer_tracedUnits;}, [], 1, false, true, "", "(_this in hyp_var_tracer_tracedUnits)"]; //Clears the lines of all drawn projectiles
		_x addAction ["Desactivar trayectoria balística", "[player] spawn hyp_fnc_traceFireOff", [], 1, false, true, "", "(_this in hyp_var_tracer_tracedUnits)"];
	
	} foreach _shelves;
	{
		_x addEventHandler ["HitPart", {_this spawn ASORSR_fnc_OnTargetHit;}];
	} foreach _targets;
	if(ASORSR_EnableLiveTargets) then {
		_speakers addAction ["Activar objetivos humanos", "[[], 'ASORSR_fnc_TurnOnLiveTargets', false] spawn BIS_fnc_MP", [], 1, false, true, "", "_instructors = call ASORSR_fnc_GetOnlineInstructors; ((_this in _instructors) || ((count _instructors) == 0))"];
	};
};

ASORSR_fnc_ClientInitLiveTargets = {
	private ['_shelves', '_targets'];
	if(!hasInterface) exitWith{};
	_targets = _this select 0;
	{
	
		_x addEventHandler ["HitPart", {_this spawn ASORSR_fnc_OnLiveTargetHitPart;}];
	} foreach _targets;
};

if(!isServer) exitWith{};
ASORSR_CurrentLiveTargets = [];

ASORSR_fnc_TurnOnLiveTargets = {
	//hint "creating live targets";
	if((count ASORSR_CurrentLiveTargets) > 0) exitWith { 
		{deleteVehicle _x;} forEach ASORSR_CurrentLiveTargets; 
		ASORSR_CurrentLiveTargets = [];
	};
	_shootingPosOffset = [-17.5,2.37158,6.13332];
	_rackOffset = [-2, 0, 0];
	_targets = [];
	_startdir = markerDir "ShootingRange";
	for "_i" from 1 to 10 do {
		_shootingPosPos = (ASORSR_BasePos vectorAdd ([_shootingPosOffset, _startDir] call ASORSR_fnc_VectorRotate));
		//_rack = ["Land_ShelvesMetal_F", _shootingPosPos, _rackOffset, _startDir] call _fnc_CreateAtOffset;
		_liveTargetIndex = [_i, ASORSR_LiveTargets] call ASORSR_fnc_IndexOf;
		if(_liveTargetIndex > -1) then {
			_liveTarget = ASORSR_LiveTargets select _liveTargetIndex select 1;
		//	hint format["%1 - %2 (position %3)", _liveTargetIndex, _liveTarget, _i];
			for "_t" from 1 to 10 do {
				_target = [_liveTarget, _shootingPosPos, [1, 100*_t, 0], _startDir, 180, false] call ASORSR_fnc_CreateAtOffset;
				_target addEventHandler ["handleDamage", "0"];
				_target disableAI "TARGET";
				_target disableAI "AUTOTARGET";
				_target disableAI "MOVE";
				_target disableAI "FSM";
				_target addMPEventHandler ["MPHit", "_this spawn ASORSR_fnc_OnLiveTargetHit"];
				_targets set [count _targets, _target];
			};

		};
		_shootingPosOffset set [0, (_shootingPosOffset select 0) + 4.1];
	};
	ASORSR_CurrentLiveTargets = _targets;
	[[_targets], "ASORSR_fnc_ClientInitLiveTargets"] spawn BIS_fnc_MP;
};

ASORSR_fnc_CreateAtOffset = {
	private ["_class", "_posASL", "_offset", "_dir", "_vectorDir", "_vehicle"];
	_class = _this select 0;
	_posASL = _this select 1;
	_offset = _this select 2;
	_offsetDir = _this select 3;
	_dir = [_this, 4, 0, [0]] call BIS_fnc_Param;
	_useASL = [_this, 5, true, [true]] call BIS_fnc_Param;
	//rotate offset and work out final position
	_offset = [_offset, _offsetDir] call ASORSR_fnc_VectorRotate;
	_finalPosASL = _posASL vectorAdd _offset;
	//get vector dir
	_vectorDir = [[0,1,0], _dir + _offsetDir] call ASORSR_fnc_VectorRotate;
	//create vehicle
	_vehicle = _class createVehicle _finalPosASL;
	//rotate
	_vehicle setVectorDirAndUp [_vectorDir, [0,0,1]];
	//reposition
	if(_useASL) then {
		_vehicle setPosASL _finalPosASL; 
	} else {
		_finalPosASL set [2, 0];
		_vehicle setPos _finalPosASL;
		_vehicle setVectorDirAndUp [_vectorDir, [0,0,1]];
	};
	//return the vehicle
	_vehicle
};

_fnc_CreateAtOffset = ASORSR_fnc_CreateAtOffset;
_startOffset = [-18,0, 0];
_startpos = getMarkerPos "ShootingRange";
_startdir = markerDir "ShootingRange";
_startpos set [2, (getTerrainHeightASL _startpos) + _PlatformHeight];
_startpos = _startpos vectorAdd ([_startOffset, _startdir] call ASORSR_fnc_VectorRotate);

_platform1 = ["Land_nav_pier_m_F", _startpos, [0,0,0], _startDir]  call _fnc_CreateAtOffset;
_pos = getpos _platform1; 
_posASL = getposASL _platform1;
_bounds = boundingBoxReal _platform1;
_pos = getpos _platform1; 
_posASL = getposASL _platform1;
ASORSR_BasePos = _posASL;
_boundsmin = _bounds select 0;
_boundsmax = _bounds select 1;
_size = _boundsmin vectorDiff _boundsMax;

//place another to the right
//_platform2 = ["Land_nav_pier_m_F", _posASL, [-((_size select 0)*0.9078), 0 ,0], _startDir] call _fnc_CreateAtOffset;
_stairs = ["Land_GH_Stairs_F", _posASL, [0 - 0.9, -6.3, 1.8], _startDir, 180] call _fnc_CreateAtOffset;
_stairs = ["Land_GH_Stairs_F", _posASL, [1.45 - 0.9, -6.3, 1.8], _startDir, 180] call _fnc_CreateAtOffset;

_shelves = [];
_targets = [];
_shootingPosOffset = [-17.5,2.37158,6.13332];
_rackOffset = [-2, 0, 0];
for "_i" from 1 to 10 do {
	_shootingPosPos = (_posASL vectorAdd ([_shootingPosOffset, _startDir] call ASORSR_fnc_VectorRotate));
	_rack = ["Land_ShelvesMetal_F", _shootingPosPos, _rackOffset, _startDir] call _fnc_CreateAtOffset;
	if(_i < 10) then {
		_shootingPos = ["Land_cargo_addon01_V1_F", _posASL, _shootingPosOffset, _startDir, 0] call _fnc_CreateAtOffset;
		_shelves set [count _shelves, _rack];
		for "_t" from 1 to 10 do {
			_target = [_TargetClass, _shootingPosPos, [0, 100*_t, 0], _startDir, 0, false] call _fnc_CreateAtOffset;
			_targets set [count _targets, _target];
		};
		_shootingPosOffset set [0, (_shootingPosOffset select 0) + 4.1];
	};
};
_railOffset = [-19.55- 0.45,-2.38,6.13332];
for "_i" from 1 to 2 do {
	_rail = ["Land_Obstacle_Cross_F", _posASL, _railOffset, _startDir, 90] call _fnc_CreateAtOffset;
	_railOffset set [1, (_railOffset select 1) + 3.05];
};
_railOffset = [-18 - 0.45,-3.88,6.13332];
private ["_speakers"];
for "_i" from 1 to 13 do {
	if(_i != 7) then {
		_rail = ["Land_Obstacle_Cross_F", _posASL, _railOffset, _startDir] call _fnc_CreateAtOffset;
	};
	if(_i == 4) then {
		_speakers = ["Land_Loudspeakers_F", _posASL, [(_railOffset select 0) - 1, (_railOffset select 1) + 0.3, (_railOffset select 2)-0.583], _startDir] call _fnc_CreateAtOffset;
	};
	_railOffset set [0, (_railOffset select 0) + 3.05];
};
_railOffset = [(_railOffset select 0)-1.50, -2.38, 6.13332];
for "_i" from 1 to 1 do {
	_rail = ["Land_Obstacle_Cross_F", _posASL, _railOffset, _startDir, 90] call _fnc_CreateAtOffset;
	_railOffset set [1, (_railOffset select 1) + 3.05];
};
_flag = [_FlagClass, _posASL, _railOffset, _startDir] call _fnc_CreateAtOffset;

_flagpos = (getMarkerPos "ShootingRange_Flag");
if((_flagpos select 0) != 0) then {
	_flag = _FlagClass createVehicle _flagpos;
	_flag setVectorDirAndUp [[(vectorDir _platform1) select 1, (vectorDir _platform1) select 0, 0],[0,0,1]];
};
if(ASORSR_PenetrationTest) then {
	_rearplatform = ["Land_Pier_wall_F", _startPos, [-3,-50,3], _startDir, 180] call _fnc_CreateAtOffset;
	_basepos = getposASL _rearplatform;
	_penetrationoffset = [20,10.3833,2.22549];
	for "_i" from 1 to 10 do {
		["Land_Shoot_House_Wall_F", _basepos, _penetrationoffset, _startDir, 90] call _fnc_CreateAtOffset;
		_penetrationoffset = _penetrationoffset vectorAdd [-1,0,0];
	};
	_penetrationoffset = _penetrationoffset vectorAdd [-2,0,0];
	for "_i" from 1 to 4 do {
		["Land_Wall_Tin_4", _basepos, _penetrationoffset, _startDir, 90] call _fnc_CreateAtOffset;
		_penetrationoffset = _penetrationoffset vectorAdd [-1,0,0];
	};
	_penetrationoffset = _penetrationoffset vectorAdd [-2,0,0];
	for "_i" from 1 to 3 do {
		["Land_BagFence_Short_F", _basepos, _penetrationoffset, _startDir, 90] call _fnc_CreateAtOffset;
		_penetrationoffset = _penetrationoffset vectorAdd [-1.5,0,0];
	};
	_penetrationoffset = _penetrationoffset vectorAdd [-2,0,0];
	for "_i" from 1 to 1 do {
		["Land_HBarrier_1_F", _basepos, _penetrationoffset, _startDir, 90] call _fnc_CreateAtOffset;
		_penetrationoffset = _penetrationoffset vectorAdd [-2.5,0,0];
	};
	_penetrationoffset = _penetrationoffset vectorAdd [-2,0,0];

	["C_Offroad_01_F", _basepos, _penetrationoffset, _startDir, 0] call _fnc_CreateAtOffset;
	_penetrationoffset = _penetrationoffset vectorAdd [-4.5,0,0];

	["O_MRAP_02_F", _basepos, _penetrationoffset, _startDir, 0] call _fnc_CreateAtOffset;
	_penetrationoffset = _penetrationoffset vectorAdd [-4.5,0,0];
};
//Land_TouristShelter_01_F
[[_shelves, _targets, _speakers], "ASORSR_fnc_ClientInit", true, true] spawn BIS_fnc_MP;

//for single player / local multiplayer host
if(hasInterface) then {
	[_shelves, _targets, _speakers] call ASORSR_fnc_ClientInit;
};