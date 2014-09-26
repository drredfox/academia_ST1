class equipCrate_Dialog
{
	idd = -1;
	movingEnable = 0;
	class controlsBackground {
		class equipCrate_TitleBack : THR_Base 
		{
			colorBackground[] = {1,0.5,0,0.7};
			text = "THR - Caja de equipamiento";
			idc = 4;
			x = 0.1;
			y = 0.2;
			w = 0.5;
			h = 0.04;
		};
		class equipCrate_MainBack : THR_Base 
		{
			colorBackground[] = {0, 0, 0, 0.7};
			idc = 5;
			x = 0.1;
			y = 0.244;
			w = 0.5;
			h = 0.512;
		};
		class equipCrate_ListText : THR_Base 
		{
			idc = 6;
			colorBackground[] = {1,0.5,0,0.5};
			text = "Lista de equipo";
			sizeEx = 0.04;
			x = 0.12; y = 0.27;
			w = 0.275; h = 0.04;
		};
	};
	
	class controls {
	
		class equipCrate_EquipList : THR_ListBox 
		{
			idc = 2701;
			text = "";
			sizeEx = 0.032;
			onLBSelChanged = "";
			onLBDblClick = "";
			
			x = 0.12; y = 0.31;
			w = 0.275; h = 0.4;
		};
		
		class equipCrate_ButtonUniforms : THR_Button
		{
			idc = 2702;
			text = "Uniformes";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecType = 'Uniform';";
			x = 0.42; y = 0.27;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonVests : THR_Button
		{
			idc = 2703;
			text = "Chalecos";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecType = 'Vest';";
			x = 0.42; y = 0.32;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonBackpacks : THR_Button
		{
			idc = 2704;
			text = "Mochilas";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecType = 'Backpack';";
			x = 0.42; y = 0.37;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonHeadGear : THR_Button
		{
			idc = 2705;
			text = "Accesorios";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecType = 'Headgear';";
			x = 0.42; y = 0.42;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonGlasses : THR_Button
		{
			idc = 2706;
			text = "Gafas";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecType = 'Glasses';";
			x = 0.42; y = 0.47;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonAdd : THR_Button
		{
			idc = 2707;
			text = "Añadir";
			action = "";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "THR_ecTransf = true;";
			x = 0.42; y = 0.60;
			w = 0.1562;
			h = 0.04;
		};
		
		class equipCrate_ButtonExit : THR_Button
		{
			idc = 2708;
			text = "Salir";
			action = "closeDialog 0;";
			colorBackground[] = {1,0.5,0,0.5};
			onButtonClick = "";
			x = 0.42; y = 0.66;
			w = 0.1562;
			h = 0.04;
		};
	
	};

	objects[] = {};
};