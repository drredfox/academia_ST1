//CALL: [location] spawn THR_Training_Popup_Create
//DESC: Creates a popup target at the given position, it will be destroyed once shot down
//RETR: -
fnc_Training_Popup_Create =
{
	private["_location","_popup"];
	_location = _this select 0;

	_popup = "TargetP_Inf_F" createVehicle (_location);
	_popup animate["terc",0];

	sleep 1;

	while{_popup animationPhase "terc" == 0} do {
		sleep 0.5;
	};
	sleep 0.5;
	deleteVehicle _popup;
};

//CALL: null=[target,((direction target) + 90),10,0.1,.3] spawn fn_MovingTarget;
//DESC: Makes the target move. Parameters: target,direction,distance to move, speed, pause time. Script from http://forums.bistudio.com/showthread.php?156778-Script-Moving-Target
//RETR: -
fnc_MovingTarget =
{
	private ["_target","_distance","_speed","_dir"];
	_target = _this select 0;
	_dir = _this select 1;
	_distance = _this select 2;
	_speed = _this select 3;
	_pause = _this select 4;


	while {true} do
	{
		sleep _pause;
		for "_i" from 0 to _distance/_speed do
		{
			_target setPos
			[
				(position _target select 0) + ((sin (_dir)))*_speed,
				(position _target select 1) + ((cos (_dir)))*_speed,
				0
			];
			sleep 0.01;
		};
		sleep _pause;
		for "_i" from 0 to _distance/_speed do
		{
			_target setPos
			[
				(position _target select 0) - (sin (_dir))*_speed,
				(position _target select 1) - ((cos (_dir)))*_speed,
				0
			];
			sleep 0.01;
		};
	};
};