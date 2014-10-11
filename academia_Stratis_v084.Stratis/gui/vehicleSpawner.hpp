class Vehiclespawn_dialog{
		idd=5;
		movingEnable=0;
class controls{

class RscText_1000: RscText
{
	idc = 1000;
	x = 0.102214 * safezoneW + safezoneX;
	y = 0.170823 * safezoneH + safezoneY;
	w = 0.373307 * safezoneW;
	h = 0.646597 * safezoneH;
	colorBackground[] = {0,0,0,0.6};
};
class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "";
	x = 0.102214 * safezoneW + safezoneX;
	y = 0.170823 * safezoneH + safezoneY;
	w = 0.373307 * safezoneW;
	h = 0.646597 * safezoneH;
	colorText[] = {1,1,1,0.4};
	colorBackground[] = {1,1,1,0.2};
};
class RscText_1001: RscText
{
	idc = 1001;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
	colorBackground[] = {0.4,0.4,0.4,0.4};
};
class RscText_1002: RscText
{
	idc = 1002;
	x = 0.236849 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
	colorBackground[] = {0.4,0.4,0.4,0.4};
};
class RscText_1003: RscText
{
	idc = 1003;
	x = 0.353125 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
	colorBackground[] = {0.4,0.4,0.4,0.4};
};
class RscFrame_1801: RscFrame
{
	idc = 1801;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
};
class RscFrame_1802: RscFrame
{
	idc = 1802;
	x = 0.236849 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
};
class RscFrame_1803: RscFrame
{
	idc = 1803;
	x = 0.353125 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY;
	w = 0.104036 * safezoneW;
	h = 0.31742 * safezoneH;
};
class RscFrame_1804: RscFrame
{
	idc = 1804;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.59405 * safezoneH + safezoneY;
	w = 0.336589 * safezoneW;
	h = 0.176345 * safezoneH;
};
class RscText_1004: RscText
{
	idc = 1004;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.59405 * safezoneH + safezoneY;
	w = 0.336589 * safezoneW;
	h = 0.176345 * safezoneH;
	colorBackground[] = {0.4,0.4,0.4,0.4};
};
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY+0.01;
	w = 0.104036 * safezoneW;
	h = 0.30742 * safezoneH;
colorBackground[] = {0.4,0.4,0.4,0};
	onLBSelChanged="CurVeh="""";lbClear 1502;lbClear 1501;_string=lbText [1500,lbCurSel 1500];_array=call compile _string;{lbAdd [1501,_x]} forEach _array;";
};
class RscListbox_1501: RscListbox
{
	idc = 1501;
	x = 0.236849 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY+0.01;
	w = 0.104036 * safezoneW;
	h = 0.30742 * safezoneH;
colorBackground[] = {0.4,0.4,0.4,0};
	onLBSelChanged="CurVeh="""";lbClear 1502;_string=lbText [1501,lbCurSel 1501];_array=call compile _string;{lbAdd [1502,(getText (configfile >> 'CfgVehicles' >> _x >> 'displayName'))]} forEach _array;";
};
class RscListbox_1502: RscListbox
{
	idc = 1502;
	x = 0.353125 * safezoneW + safezoneX;
	y = 0.253118 * safezoneH + safezoneY+0.01;
	w = 0.104036 * safezoneW;
	h = 0.30742 * safezoneH;
colorBackground[] = {0.4,0.4,0.4,0};
	onLBSelChanged="[] spawn fnc_preview;";
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Crear Vehiculo";
	x = 0.378794 * safezoneW + safezoneX;
	y = 0.778339 * safezoneH + safezoneY;
	w = 0.0893415 * safezoneW;
	h = 0.0292299 * safezoneH;
	action="[] spawn fnc_veh_spawn;closeDialog 0;";
};
class RscPicture_1200: RscPicture
{
	idc = 1200;
	x = 0.298047 * safezoneW + safezoneX+0.1;
	y = 0.59405 * safezoneH + safezoneY+0.02;
	w = 0.129115 * safezoneW;
	h = 0.159115 * safezoneH;
};
class RscStructuredText_1100: RscStructuredText
{
	idc = 1100;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.170823 * safezoneH + safezoneY;
	w = 0.336589 * safezoneW;
	h = 0.0822941 * safezoneH;
	colorBackground[] = {-1,-1,-1,0};
};
class RscButton_1602: RscButton
{
	idc = 1602;
	text = "Cerrar";
	x = 0.120833 * safezoneW + safezoneX;
	y = 0.778245 * safezoneH + safezoneY;
	w = 0.0493415 * safezoneW;
	h = 0.0292299 * safezoneH;
	action="closeDialog 0;";
};
class RscFrame_1800: RscFrame
{
	idc = 1800;
	x = 0.102214 * safezoneW + safezoneX;
	y = 0.170823 * safezoneH + safezoneY;
	w = 0.373307 * safezoneW;
	h = 0.646597 * safezoneH;
};
class RscStructuredText_1101: RscStructuredText
{
	idc = 1101;
	x = 0.120573 * safezoneW + safezoneX;
	y = 0.59405 * safezoneH + safezoneY;
	w = 0.336589 * safezoneW;
	h = 0.176345 * safezoneH;
};
};};