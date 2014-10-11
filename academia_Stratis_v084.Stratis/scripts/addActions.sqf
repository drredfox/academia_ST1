//execVM "scripts\addActions.sqf";
	//Helper flags in firing ranges; case 0

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

	//VAS+equipment crate; case 7

		VAS_1 allowDamage false;
		VAS_1 enableSimulation false;
		clearWeaponCargo VAS_1;
		clearMagazineCargo VAS_1;
		clearItemCargo VAS_1;
		VAS_1 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_2 allowDamage false;
		VAS_2 enableSimulation false;
		clearWeaponCargo VAS_2;
		clearMagazineCargo VAS_2;
		clearItemCargo VAS_2;
		VAS_2 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_3 allowDamage false;
		VAS_3 enableSimulation false;
		clearWeaponCargo VAS_3;
		clearMagazineCargo VAS_3;
		clearItemCargo VAS_3;
		VAS_3 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_4 allowDamage false;
		VAS_4 enableSimulation false;
		clearWeaponCargo VAS_4;
		clearMagazineCargo VAS_4;
		clearItemCargo VAS_4;
		VAS_4 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_5 allowDamage false;
		VAS_5 enableSimulation false;
		clearWeaponCargo VAS_5;
		clearMagazineCargo VAS_5;
		clearItemCargo VAS_5;
		VAS_5 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

		VAS_6 allowDamage false;
		VAS_6 enableSimulation false;
		clearWeaponCargo VAS_6;
		clearMagazineCargo VAS_6;
		clearItemCargo VAS_6;
		VAS_6 addAction["<t color='#ff1111'>Equipamiento</t>", "ASORGS\open.sqf"];

	//Urban training zone;

		//flag_urb_training allowDamage false;
		//flag_urb_training addAction [("<t color=""#BFFF00"">" + "Comenzar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_start.sqf",[], 3, false, true, "", "!THR_UrbanTraining_Active"];
		//flag_urb_training addAction [("<t color=""#ff1111"">" + "Cancelar entrenamiento urbano" + "</t>"), "scripts\actions\urbantraining_stop.sqf",[], 3, false, true, "", "THR_UrbanTraining_Active"];*/

	//kamino mission control;

		flag_missioncontrol allowDamage false;
		flag_missioncontrol enableSimulation false;
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Liberar MCC Sandbox" + "</t>"), "scripts\actions\missioncontrol_freemcc.sqf",[], 3, false, true, "", ""];
		flag_missioncontrol addAction [("<t color=""#BFFF00"">" + "Ejecutar limpieza de servidor" + "</t>"), "[false,0] spawn fnc_cleanup;",[], 3, false, true, "", ""];

	//Mortars;

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];

		mortar_1 allowDamage false;
		mortar_2 addAction [("<t color=""#FFFF00"">" + "Rearmar" + "</t>"), "scripts\actions\repair.sqf"];
		mortar_3 addAction [("<t color=""#F2FF00"">" + "Activar bulletcam de mortero" + "</t>"), "scripts\actions\mortarcam_enable.sqf"];