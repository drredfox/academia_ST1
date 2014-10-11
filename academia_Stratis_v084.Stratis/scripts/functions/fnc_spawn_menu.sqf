//DESCRIPCION:	Crea un menu con previsualizacion de todos los vehiculos existentes en el juego. La previsualizacion se realiza en local, con lo que no supone problemas en el multijugador.
//REQUIERE:		dialogs\defines.hpp | dialogs\vehiclespawner.hpp" | fncpreview.sqf | fnc_vehspawnpos.sqf | requiere de un helipuerto invisible para la muestra y de otro diference para el Spawn.
//ARGUMENTOS:	_select: tipo de Spawn. 1 Vehiculos - 2 helicopteros - 3 Aviones - 4 Lanchas
//				spawnpos: Lugar del Spawn
//				preview: Lugar de la previsualizacion.
//COMPILACION:	call compile preprocessFileLineNumbers "ruta\fnc_spawn_menu.sqf";
//LLAMADA:		[2, Preview, Spawn] spawn fnc_spawn_menu
//ACCION:		this addAction[("<t color=""#ed6b0b"">" + ("Open Tracked Vehicle Spawner") + "</t>"),"[2,Preview,Spawn] spawn fnc_spawn_menu"];

fnc_spawn_menu = {
_select= _this select 0;
preview=_this select 1;
spawnpos=_this select 2;

createDialog "Vehiclespawn_dialog";
disableSerialization;
	_dispV=finddisplay 5;
	_contrl=_dispV DisplayCtrl 1100;
	_contrl1=_dispV DisplayCtrl 1101;
	_ttext1="<t shadow='2'><t size='1.7'><t color='#ffffff'>Armamento</t></t></t>";
	_contrl1 ctrlSetStructuredText parseText _ttext1;

	_Cam = "Camera" CamCreate position preview;
	_Cam CameraEffect ["internal", "front"];
	showCinemaBorder false;

switch (_select) do {
    case 1: {

		_Cam CamSetTarget ([position preview,[-4,2,1]] call BIS_fnc_vectorAdd);
		_Cam CamSetRelPos [-6,-10,5];
		_Cam Camcommit 0;
		_ttext="<t shadow='2'><t size='2.5'><t color='#ffffff'>Spawn Vehiculos Terrestres</t></t></t>";
		_contrl ctrlSetStructuredText parseText _ttext;

		_array = ["APCs","Blindados","Jeeps_y_Camiones","UAV_Terrestre","Civiles"];
		Jeeps_y_Camiones=["Ifrit","Hunter","Strider","HEMTT","Zamak","Tempest"];
		Apcs=["Marshalls","Marid","Gorgon","BTR"];
		Gorgon=["I_APC_Wheeled_03_cannon_F"];
		Zamak=["I_Truck_02_covered_F","O_Truck_02_transport_F","O_Truck_02_covered_F","I_Truck_02_transport_F"];
		HEMTT=["B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_Repair_F","B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_mover_F","B_Truck_01_box_F"];
		Marshalls=["B_APC_Wheeled_01_cannon_F"];
		Marid=["O_APC_Wheeled_02_rcws_F"];
		Strider=["I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F"];
		Ifrit=["O_MRAP_02_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F"];
		Hunter=["B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F"];
		Civiles=["Offroad","Quad","Hatchback","SUV","Van"];
		Offroad=["C_Offroad_01_F","B_G_Offroad_01_armed_F","I_G_Offroad_01_F"];
		Quad=["B_Quadbike_01_F","I_Quadbike_01_F","O_Quadbike_01_F","C_Quadbike_01_F","O_G_Quadbike_01_F"];
		Hatchback=["C_Hatchback_01_F","C_Hatchback_01_sport_F"];
		Tempest=["O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_device_F"];
		SUV=["C_SUV_01_F"];
		Van=["C_Van_01_box_F"];
		Blindados=["APCs_Blindados","MBTs","SPGs","AAs"];
		APCs_Blindados=["O_APC_Tracked_02_cannon_F","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_CRV_F","I_APC_tracked_03_cannon_F"];
		MBTs=["B_MBT_01_cannon_F","B_MBT_01_TUSK_F","O_MBT_02_cannon_F","I_MBT_03_cannon_F"];
		SPGs=["O_MBT_02_arty_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F"];
		AAs=["B_APC_Tracked_01_AA_F","O_APC_Tracked_02_AA_F"];
		UAV_Terrestre=["UGV"];
		UGV=["B_UGV_01_F","B_UGV_01_rcws_F"];

		{lbAdd[1500,_x];}forEach _array;
	};
	    case 2: {

		_Cam CamSetTarget ([position preview,[-8,2,3]] call BIS_fnc_vectorAdd);
		_Cam CamSetRelPos [-8,-15,0];
		_Cam Camcommit 0;
		_ttext="<t shadow='2'><t size='2.5'><t color='#ffffff'>Spawn Helicopteros</t></t></t>";
		_contrl ctrlSetStructuredText parseText _ttext;

		_array=["Helis_Ataque","Helis_Transporte","UAV_Rotores"];
		Helis_Ataque=["AH9","Commanche","Havoc"];
		Havoc=["O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","SUD_MI48_RU"];
		Commanche=["B_Heli_Attack_01_F","ST1_AH_99_FG"];
		AH9=["B_Heli_Light_01_armed_F","B_Heli_Light_01_F","ST1_AH_9_FG","ST1_MH_9_FG"];
		Helis_Transporte=["KA60","UH","Mohawk","Hellcat"];
		Mohawk=["I_Heli_Transport_02_F","ST1_CH49_Mohawk_FG"];
		UH=["B_Heli_Transport_01_F","B_Heli_Transport_01_Camo_F","ST1_UH_80_FG","ST1_UH_80_MED_FG"];
		KA60=["O_Heli_Light_02_unarmed_F","O_Heli_Light_02_F","SUD_KA60_RU"];
		Hellcat=["I_Heli_light_03_F","I_Heli_light_03_unarmed_F"];
		UAV_Rotores=["UAV_Portatil"];
		UAV_Portatil=["B_UAV_01_F"];

		{lbAdd[1500,_x];}forEach _array;
    };

    case 3: {

		_Cam CamSetTarget ([position preview,[-5,0,2]] call BIS_fnc_vectorAdd);
		_Cam camSetRelPos [-5,-14,2];
		_Cam Camcommit 0;
		_ttext="<t shadow='2'><t size='2.5'><t color='#ffffff'>Spawn Aviones</t></t></t>";
		_contrl ctrlSetStructuredText parseText _ttext;

		_array=["Aviones","UAV_Aereo"];
		Aviones=["Buzzard","Wipeout","Neophron"];
		Buzzard=["I_Plane_Fighter_03_AA_F","I_Plane_Fighter_03_CAS_F"];
		Wipeout=["B_Plane_CAS_01_F"];
		Neophron=["O_Plane_CAS_02_F"];
		UAV_Aereo=["UAV"];
		UAV=["B_UAV_02_F","B_UAV_02_CAS_F"];

		{lbAdd[1500,_x];}forEach _array;
    };

    case 4: {

		_Cam CamSetTarget ([position preview,[-4,2,1]] call BIS_fnc_vectorAdd);
		_Cam camSetRelPos [7,-14,2];
		_Cam Camcommit 0;
		_ttext="<t shadow='2'><t size='2.5'><t color='#ffffff'>Spawn Botes</t></t></t>";
		_contrl ctrlSetStructuredText parseText _ttext;

		_array=["Lanchas_Militares","Lanchas_Civiles","Submarinos"];
		Lanchas_Militares=["Assault_Boat","Rescue_Boat","Speed_Boat"];
		Submarinos=["Opfor_sub","Blufor_sub"];
		Blufor_Sub=["B_SDV_01_F"];
		Opfor_Sub=["O_SDV_01_F"];
		Lanchas_Civiles=["Rescue_Boat_Civil","Civil_Boat"];
		Speed_Boat=["B_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F"];
		Rescue_Boat=["B_Lifeboat","O_Lifeboat"];
		Assault_Boat=["I_Boat_Transport_01_F","B_Boat_Transport_01_F"];
		Rescue_Boat_Civil=["C_Rubberboat","C_Boat_Civil_01_rescue_F","C_Boat_Civil_01_police_F"];
		Civil_Boat=["C_Boat_Civil_01_F"];

		{lbAdd[1500,_x];}forEach _array;
    };
};

waitUntil {!Dialog};
if(!isNil "preview_veh")then{deleteVehicle preview_veh;};
_Cam CameraEffect ["terminate", "front"];
CamDestroy _Cam;
};