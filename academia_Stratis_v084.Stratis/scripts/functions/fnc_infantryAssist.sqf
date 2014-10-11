//CALL:	[] spawn THR_Popup_AimAssist;
//DESC: Draws a line to the popup target closest to the crosshair and hints the distance while the variable "THR_draw" is true
//RETR: -
fnc_Popup_AimAssist =
{
	THR_draw = false;
	private["_target","_pos"];
	THR_draw = true;
	player addAction [("<t color=""#F2FF00"">" + "Desactivar ayuda al apuntado" + "</t>"), "thr\scripts\actions\aimassist_disable.sqf"];
	while{THR_draw} do {
		_pos = screenToWorld [0.5,0.5];
		if(!isNull cursorTarget) then {
			_pos = getPos cursorTarget;
		};
		_target = _pos nearestObject "TargetP_Inf_F";
		if(!isNull _target) then {
			drawLine3D [getPos player,_target,[1,0,0,1]];
			hintSilent format["Distancia: %1",(getPos player distance _target)];
		};
	};
	hintSilent "Ayuda al apuntado desactivada";
};

//CALL: player addeventhandler ["fired",{_this spawn THR_Bullet_Trajectory;}];
//DESC: Shows a line with the trajectory of the bullet. Script part of http://www.armaholic.com/page.php?id=20906
//RETR: -
fnc_Bullet_Trajectory =
{
	private["_projectile","_oldpos","_currentpos"];
	_projectile=_this select 6;
		_ballisitc_trajectory=
		{
			private["_proj","_pos1","_pos2","_time3d"];
			_proj=_this select 0;
			_pos1=_this select 1;
			_pos2=_this select 2;
			_time3d=time+5;
			while {time<_time3d} do
			{
				drawLine3D [_pos1,_pos2,[0,1,0,1]];
				sleep 0.01;
			};
		};
		_oldpos = getposATL _projectile; if (surfaceIsWater _oldpos) then { _oldpos = getposASL _projectile; };

		_n=0;
		_time=time+5;
		while {(alive _projectile) && !(isnull _projectile) && (time<_time)} do
		{
			_n=_n+1;

			_currentpos=getposATL _projectile;
			if(surfaceIsWater _currentpos) then {
				_currentpos = getposASL _projectile;
			};
			[_projectile,_oldpos,_currentpos] spawn _ballisitc_trajectory;
			_oldpos=_currentpos;

			sleep 0.05;
		};
};

//CALL: _unit addEventHandler ["fired", { [(_this select 6)] spawn bulletcam_main }];
//DESC: Enables eventhandler to show bulletcam. Script from http://www.armaholic.com/page.php?id=21356
//RETR: -
fnc_Bulletcam =
{
	if (!bulletcam_running) then {
		bulletcam_running = true;
		private["_projectile","_camera","_xVal","_cancel","_camPos"];

		_projectile = _this select 0;

		// Init camera
		_camera = "camera" camCreate (position _projectile);
		_camera cameraEffect ["internal", "back"];

		// Initialize
		_xVal = 0;
		_cancel = false;

		while { alive _projectile && ! _cancel } do {
			// Update Position
			_camera camSetTarget _projectile;

			//_camera camSetRelPos [((sin _xVal) * 15),-13,1.2];//Alternate camera
			_camera camSetRelPos [0,-13,1.2];

			// Position calculation
			_camPos = (position _projectile);
			_camera camCommit 0;

			// Update xVal
			_xVal = _xVal + 1;

			// Check for cancel
			if (inputAction "optics" != 0) then {
				exited = true;
				_cancel = true;
			};

			// Wait for next sync
			sleep 0.001;
		};

		// Only sleep when the user didn't canceled!
		if ( ! _cancel) then {
			sleep 1;
		};

		// Destroy camera
		_camera cameraeffect ["terminate", "back"];
		camDestroy _camera;
		bulletcam_running = false;
	};
};