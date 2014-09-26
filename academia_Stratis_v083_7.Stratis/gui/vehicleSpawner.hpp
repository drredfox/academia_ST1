class vSpawner_Dialog
{
	idd = -1;
	movingEnable = 0;
	class controlsBackground {
		class vSpawner_TitleBack : THR_Base 
		{
			colorBackground[] = {1,0.5,0,0.7};
			text = "THR - Creación de vehículos";
			idc = 1;
			x = 0.1;
			y = 0.2;
			w = 0.60;
			h = 0.04;
		};
		class vSpawner_MainBack : THR_Base 
		{
			colorBackground[] = {0, 0, 0, 0.7};
			idc = 2;
			x = 0.1;
			y = 0.244;
			w = 0.60;
			h = 0.512;
		};
		class vSpawner_ListText : THR_Base 
		{
			idc = 3;
			colorBackground[] = {1,0.5,0,0.5};
			text = "Lista de vehículos";
			sizeEx = 0.04;
			x = 0.12; y = 0.27;
			w = 0.35; h = 0.04;
		};
	};
	
	class controls {
	
		class vSpawner_VehicleList : THR_ListBox 
		{
			idc = 2601;
			text = "";
			sizeEx = 0.032;
			onLBSelChanged = "";
			onLBDblClick = "";
			
			x = 0.12; y = 0.31;
			w = 0.35; h = 0.4;
		};
		
		class vSpawner_ButtonSpawn : THR_Button
		{
			idc = 2602;
			text = "Crear";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_vspwn = true;";
			x = 0.50; y = 0.40;
			w = 0.1562;
			h = 0.04;
		};
		
		class vSpawner_ButtonExit : THR_Button
		{
			idc = 2603;
			text = "Salir";
			action = "closeDialog 0;";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "";
			x = 0.50; y = 0.60;
			w = 0.1562;
			h = 0.04;
		};
	
	};

	objects[] = {};
};