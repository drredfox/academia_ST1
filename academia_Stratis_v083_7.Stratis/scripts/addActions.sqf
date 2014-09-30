//execVM "scripts\addActions.sqf";

	//Helper flags in firing ranges; case 0

		flag_firingrange allowDamage false;
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

		flag_firingrange2 allowDamage false;
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

		flag_firingrange3 allowDamage false;
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

	//Ground vehicle spawner 1 (kamino firing range); case 1

		flag_groundvehicle allowDamage false;
		flag_groundvehicle addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["ground","vhspw1",225], 3, false, true, "", ""];

	//Helicopter spawner; case 2

		flag_helicopter allowDamage false;
		flag_helicopter addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["air","h1",30], 3, false, true, "", ""];
		flag_helicopter addAction [("<t color=""#BFFF00"">" + "Crear vehiculos [multispawn]" + "</t>"), "scripts\actions\spawnVehicle.sqf",["air","multispawn",0], 3, false, true, "", ""];
		flag_helicopter addAction [("<t color=""#FF0000"">" + "Limpiar multispawn" + "</t>"), "scripts\aca_air\multidelete.sqf"];
		flag_helicopter addAction [("<t color=""#FF0000"">" + "Limpiar aeropuerto" + "</t>"), "scripts\aca_air\clearAirport.sqf"];


	//Kamino firing range naval spawn; case 3

		flag_naval allowDamage false;
		flag_naval addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["water","sspwn1",310], 3, false, true, "", ""];

	//VAS+equipment crate; case 7

		VAS_1 allowDamage false;
		clearWeaponCargo VAS_1;
		clearMagazineCargo VAS_1;
		clearItemCargo VAS_1;
		VAS_1 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_2 allowDamage false;
		clearWeaponCargo VAS_2;
		clearMagazineCargo VAS_2;
		clearItemCargo VAS_2;
		VAS_2 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_3 allowDamage false;
		clearWeaponCargo VAS_3;
		clearMagazineCargo VAS_3;
		clearItemCargo VAS_3;
		VAS_3 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_4 allowDamage false;
		clearWeaponCargo VAS_4;
		clearMagazineCargo VAS_4;
		clearItemCargo VAS_4;
		VAS_4 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_5 allowDamage false;
		clearWeaponCargo VAS_5;
		clearMagazineCargo VAS_5;
		clearItemCargo VAS_5;
		VAS_5 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_6 allowDamage false;
		clearWeaponCargo VAS_6;
		clearMagazineCargo VAS_6;
		clearItemCargo VAS_6;
		VAS_6 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

	//Urban training zone; case 8

		//flag_urb_training allowDamage false;
		//flag_urb_training addAction [("<t color=""#BFFF00"">" + "Comenzar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_start.sqf",[], 3, false, true, "", "!THR_UrbanTraining_Active"];
		//flag_urb_training addAction [("<t color=""#ff1111"">" + "Cancelar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_stop.sqf",[], 3, false, true, "", "THR_UrbanTraining_Active"];*/


	//Ground vehicle spawner 2 (airport); case 9

		flag_groundvehicle2 allowDamage false;
		flag_groundvehicle2 addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["ground","vhspw2",100], 3, false, true, "", ""];

	//airport naval spawn; case 10

		flag_airport_naval allowDamage false;
		flag_airport_naval addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["water","sspwn2",100], 3, false, true, "", ""];

	//kamino mission control; case 11

		flag_missioncontrol allowDamage false;
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Liberar MCC Sandbox" + "</t>"), "scripts\actions\missioncontrol_freemcc.sqf",[], 3, false, true, "", ""];
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Ejecutar limpieza de servidor" + "</t>"), "scripts\actions\missioncontrol_serverCleanup.sqf",[], 3, false, true, "", ""];

	//Mortars; case 12

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

	//HALO jump; case 13

		flag_halo allowDamage false;

	//Spawn de aviones; case 15

		flag_planes allowDamage false;
		flag_planes addAction [("<t color=""#BFFF00"">" + "Crear vehiculo" + "</t>"), "scripts\actions\spawnVehicle.sqf",["plane","planespwn1",285], 3, false, true, "", ""];