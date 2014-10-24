//execVM "scripts\addActions.sqf";
	//Helper flags in firing ranges;

		flag_firingrange allowDamage false; flag_firingrange enableSimulation false;
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

		flag_firingrange2 allowDamage false; flag_firingrange2 enableSimulation false;
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange2 addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

		flag_firingrange3 allowDamage false; flag_firingrange3 enableSimulation false;
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar ayuda al apuntado" + "</t>"), "scripts\actions\aimassist_enable.sqf", [], 3, false, true, "", "!THR_draw"];
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam" + "</t>"), "scripts\actions\bulletcam_enable.sqf", [], 3, false, true, "", "!bulletcam_enabled"];
		flag_firingrange3 addAction [("<t color=""#F2FF00"">" + "Activar trayectoria balistica" + "</t>"), "scripts\actions\bullettrajectory_enable.sqf", [], 3, false, true, "", "!THR_BTrajectoryRunning"];

	//Mapas
		MAP_1 allowDamage false;
		MAP_1 enableSimulation false;
		MAP_1 addAction [("<t color=""#ed6b0b"">" + "Teleport" + "</t>"), "createDialog 'mapport'", [],6,true,false,"","(_target distance _this) < 3"];

		MAP_2 allowDamage false;
		MAP_2 enableSimulation false;
		MAP_2 addAction [("<t color=""#ed6b0b"">" + "Teleport" + "</t>"), "createDialog 'mapport'", [],6,true,false,"","(_target distance _this) < 3"];

		MAP_3 allowDamage false;
		MAP_3 enableSimulation false;
		MAP_3 addAction [("<t color=""#ed6b0b"">" + "Teleport" + "</t>"), "createDialog 'mapport'", [],6,true,false,"","(_target distance _this) < 3"];

		MAP_4 allowDamage false;
		MAP_4 enableSimulation false;
		MAP_4 addAction [("<t color=""#ed6b0b"">" + "Teleport" + "</t>"), "createDialog 'mapport'", [],6,true,false,"","(_target distance _this) < 3"];

		MAP_5 allowDamage false;
		MAP_5 enableSimulation false;
		MAP_5 addAction [("<t color=""#ed6b0b"">" + "Teleport" + "</t>"), "createDialog 'mapport'", [],6,true,false,"","(_target distance _this) < 3"];

	//Spawn
		SPAWN_TERRESTRE1 enableSimulation false;
		SPAWN_TERRESTRE1 allowDamage false;
		SPAWN_TERRESTRE1 addAction[("<t color=""#ed6b0b"">" + ("Spawn Vehiculos") + "</t>"),"[1,PreviewVEHICULOS,SpawnVEHICULOS] spawn fnc_spawn_menu", [],6,true,false,"","(_target distance _this) < 3"];

		SPAWN_TERRESTRE2 enableSimulation false;
		SPAWN_TERRESTRE2 allowDamage false;
		SPAWN_TERRESTRE2 addAction[("<t color=""#ed6b0b"">" + ("Spawn Vehiculos") + "</t>"),"[1,PreviewVEHICULOS,SpawnVEHICULOS2] spawn fnc_spawn_menu", [],6,true,false,"","(_target distance _this) < 3"];

		SPAWN_BOTES enableSimulation false;
		SPAWN_BOTES allowDamage false;
		SPAWN_BOTES addAction[("<t color=""#ed6b0b"">" + ("Spawn Maritimo") + "</t>"),"[4,PreviewBOTES,SpawnBOTES] spawn fnc_spawn_menu", [],6,true,false,"","(_target distance _this) < 3"];

		SPAWN_HELIS enableSimulation false;
		SPAWN_HELIS allowDamage false;
		SPAWN_HELIS addAction[("<t color=""#ed6b0b"">" + ("Spawn Helicopteros") + "</t>"),"[2,PreviewHELIS,SpawnHELIS] spawn fnc_spawn_menu", [],6,true,false,"","(_target distance _this) < 3"];

		SPAWN_AVIONES enableSimulation false;
		SPAWN_AVIONES allowDamage false;
		SPAWN_AVIONES addAction[("<t color=""#ed6b0b"">" + ("Spawn Aviones") + "</t>"),"[3,PreviewAVIONES,SpawnAVIONES] spawn fnc_spawn_menu", [],6,true,false,"","(_target distance _this) < 3"];

	//VAS+equipment crate;

		VAS_1 allowDamage false;
		VAS_1 enableSimulation false;
		clearWeaponCargo VAS_1;
		clearMagazineCargo VAS_1;
		clearItemCargo VAS_1;
		VAS_1 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

		VAS_2 allowDamage false;
		VAS_2 enableSimulation false;
		clearWeaponCargo VAS_2;
		clearMagazineCargo VAS_2;
		clearItemCargo VAS_2;
		VAS_2 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

		VAS_3 allowDamage false;
		VAS_3 enableSimulation false;
		clearWeaponCargo VAS_3;
		clearMagazineCargo VAS_3;
		clearItemCargo VAS_3;
		VAS_3 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

		VAS_4 allowDamage false;
		VAS_4 enableSimulation false;
		clearWeaponCargo VAS_4;
		clearMagazineCargo VAS_4;
		clearItemCargo VAS_4;
		VAS_4 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

		VAS_5 allowDamage false;
		VAS_5 enableSimulation false;
		clearWeaponCargo VAS_5;
		clearMagazineCargo VAS_5;
		clearItemCargo VAS_5;
		VAS_5 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

		VAS_6 allowDamage false;
		VAS_6 enableSimulation false;
		clearWeaponCargo VAS_6;
		clearMagazineCargo VAS_6;
		clearItemCargo VAS_6;
		VAS_6 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf", [],6,true,false,"","(_target distance _this) < 3"];

	//Urban training zone;

		//flag_urb_training allowDamage false;
		//flag_urb_training addAction [("<t color=""#BFFF00"">" + "Comenzar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_start.sqf",[], 3, false, true, "", "!THR_UrbanTraining_Active"];
		//flag_urb_training addAction [("<t color=""#ff1111"">" + "Cancelar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_stop.sqf",[], 3, false, true, "", "THR_UrbanTraining_Active"];*/

	//kamino mission control;

		flag_missioncontrol allowDamage false;
		flag_missioncontrol enableSimulation false;
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Liberar MCC Sandbox" + "</t>"), "scripts\actions\missioncontrol_freemcc.sqf",[], 6, false, true, "", ""];
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Ejecutar limpieza de servidor" + "</t>"), "[false,0] spawn fnc_cleanup;",[], 6, false, true, "", ""];

	//Mortars;

		mortar_1 allowDamage false;
		mortar_1 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "[_this select 0] spawn fnc_repair"];
		mortar_1 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_2 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "[_this select 0] spawn fnc_repair"];
		mortar_2 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_3 allowDamage false;
		mortar_3 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "[_this select 0] spawn fnc_repair"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];