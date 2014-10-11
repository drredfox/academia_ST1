class GUI_halo
{
	idd = 1;
	movingEnable = false;

	class controls
	{
		class GUI_halo_frame: RscFrame
		{
			idc = 1801;
			x = 0.266667 * safezoneW + safezoneX;
			y = 0.2284 * safezoneH + safezoneY;
			w = 0.459375 * safezoneW;
			h = 0.518 * safezoneH;
		};
		class GUI_halo_back: RscText
		{
			idc = -1;
			x = 0.266667 * safezoneW + safezoneX;
			y = 0.2284 * safezoneH + safezoneY;
			w = 0.459375 * safezoneW;
			h = 0.518 * safezoneH;
			colorBackground[] = {0,0,0,0.6};
		};
		class GUI_halo_strText_1: RscStructuredText
		{
			idc = 1100;
			text = "<t align='center' valign = 'middle'>Salto H.A.L.O</t>"; //--- ToDo: Localize;
			x = 0.273957 * safezoneW + safezoneX;
			y = 0.2396 * safezoneH + safezoneY;
			w = 0.44617 * safezoneW;
			h = 0.0392 * safezoneH;
		};
		class GUI_halo_strText_2: RscStructuredText
		{
			idc = 1101;
			text = "<t align='center' valign = 'middle'>Altura</t>"; //--- ToDo: Localize;
			x = 0.273957 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.116662 * safezoneW;
			h = 0.0392 * safezoneH;
		};
		class GUI_halo_strText_3: RscStructuredText
		{
			idc = 1102;
			text = "<t align='center'>Posicion</t>"; //--- ToDo: Localize;
			x = 0.456287 * safezoneW + safezoneX;
			y = 0.29 * safezoneH + safezoneY;
			w = 0.262462 * safezoneW;
			h = 0.0392 * safezoneH;
		};
		class GUI_halo_btn1000: RscButton
		{
			idc = 1600;
			text = "1000"; //--- ToDo: Localize;
			x = 0.273958 * safezoneW + safezoneX;
			y = 0.3432 * safezoneH + safezoneY;
			w = 0.116662 * safezoneW;
			h = 0.0504 * safezoneH;
			action = "halo_alt = 1000";
		};
		class GUI_halo_btn2000: RscButton
		{
			idc = 1601;
			text = "2000"; //--- ToDo: Localize;
			x = 0.273958 * safezoneW + safezoneX;
			y = 0.4076 * safezoneH + safezoneY;
			w = 0.116662 * safezoneW;
			h = 0.0504 * safezoneH;
			action = "halo_alt = 2000";
		};
		class GUI_halo_btn5000: RscButton
		{
			idc = 1602;
			text = "5000"; //--- ToDo: Localize;
			x = 0.273958 * safezoneW + safezoneX;
			y = 0.472 * safezoneH + safezoneY;
			w = 0.116662 * safezoneW;
			h = 0.0504 * safezoneH;
			action = "halo_alt = 5000";
		};

		class GUI_halo_map: RscMapControl
		{
			idc = 1200;
			x = 0.45625 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.262462 * safezoneW;
			h = 0.392 * safezoneH;
			//action = "[_this] spawn fnc_halo_pos";
			onMouseButtonClick = "halo_pos = (_this select 0) ctrlMapScreenToWorld [_this select 2, _this select 3]; player spawn fnc_halo_jump";
		};
		class GUI_halo_strText_4: RscStructuredText
		{
			idc = 1103;
			text = "<t align='left'>Selecciona la altura y pulsa sobre el mapa la posicion deseada<br/>Pulsa ESC para salir</t>"; //--- ToDo: Localize;
			x = 0.273958 * safezoneW + safezoneX;
			y = 0.598 * safezoneH + safezoneY;
			w = 0.173524 * safezoneW;
			h = 0.1372 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
			size = 0.025;
		};
	};
};