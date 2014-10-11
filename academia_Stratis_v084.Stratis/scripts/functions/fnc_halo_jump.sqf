fnc_halo_jump = {
	if (isNil "halo_alt") exitWith {hintSilent "Debes seleccionar primero la altitud del salto";};
	player setPos [halo_pos select 0, halo_pos select 1, halo_alt];
	closeDialog 0;

	cutText ["", "BLACK FADED", 999];
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 7;
	cutText ["", "BLACK IN", 7];

	//Get items de la mochila
	_cargo = getBackpackCargo (unitBackpack player);
	_backpacks = [];
	{
		for "_i" from 1 to ((_cargo select 1) select _foreachindex) do {
			_backpacks set [count _backpacks, _x];
		};
	} foreach (_cargo select 0);
	_backPackItems = (backpackItems player) + _backpacks;

	//Get casco
	_headgear = headgear player;

	//Get mochila
	_backpack	= backpack player;
	_isBackpack	= if(_backpack == "") then { false }else{ !(isNull (unitBackpack player)) };

	//Añadimos equipo para HALO (paraca y casco)
	removeHeadgear player;
	removeBackpack player;
	player addHeadgear (["H_CrewHelmetHeli_B","H_CrewHelmetHeli_O", "H_CrewHelmetHeli_I"] select ([WEST, EAST, RESISTANCE] find (side player)));
	player addBackpack "B_Parachute";

	//Creamos placeHolder para mochila
	_packHolder = if(_isBackpack) then { createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"] }else{ nil };
	if(!isNil "_packHolder") then { _packHolder addBackpackCargoGlobal [_backpack, 1] };

	//Esperamos a que la unidad este en el aire y añadimos placeHolder mochila
	waitUntil {!isTouchingGround player || (getPos player select 2) > 1};
	if(!isNil "_packHolder") then {
		_packHolder attachTo [player,[-0.12,-0.02,-.74],"pelvis"];
		_packHolder setVectorDirAndUp [[0,-1,-0.05],[0,0,-1]];
	};

	//Cuando se abre paracaidas el placeHolder cambia de posicion
	waitUntil {animationState player == "para_pilot"};
	if(!isNil "_packHolder") then {
		_packHolder attachTo [vehicle player,[-0.07,0.67,-0.13],"pelvis"];
		_packHolder setVectorDirAndUp [[0,-0.2,-1],[0,1,0]];
	};

	//Esperamos a que la unidad aterrice y volvemos a colocar equipo inicial
	waitUntil {isTouchingGround player || (getPos player select 2) < 1};
	if(!isNil "_packHolder") then {
		detach _packHolder;
		deleteVehicle _packHolder;
		player addHeadgear _headgear;
		player addBackpack _backpack;
		player addBackPackCargo _cargo;
	};
};