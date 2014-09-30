class Mapport {
	idd=1;
	movingEnable=1;
class controls{

class RscText_1000: RscText //Frame de fondo
{
	idc = 1000;
	x = 0.298047 * safezoneW + safezoneX;
	y = 0.264874 * safezoneH + safezoneY;
	w = 0.401042 * safezoneW;
	h = 0.453573 * safezoneH;
	colorBackground[] = {0,0,0,0.6};
};
class RscText_1001: RscText
{
	idc = 1001;
	text = "Teleportar a";
	x = 0.328646 * safezoneW + safezoneX;
	y = 0.300143 * safezoneH + safezoneY;
	w = 0.0611979 * safezoneW;
	h = 0.0352689 * safezoneH;
};
class RscFrame_1800: RscFrame //Borde del frame de fondo
{
	idc = 1800;
	x = 0.299479 * safezoneW + safezoneX;
	y = 0.266341 * safezoneH + safezoneY;
	w = 0.401042 * safezoneW;
	h = 0.453573 * safezoneH;
};
class RscPicture_1200: RscMapcontrol //Mapa
{
	idc = 1200;
	text = "";
	x = 0.421224 * safezoneW + safezoneX;
	y = 0.280086 * safezoneH + safezoneY;
	w = 0.272135 * safezoneW;
	h = 0.426084 * safezoneH;
};

//Botones
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Base Kamino";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.336016 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Kamino] call fnc_teleport;";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Campo Francotiradores";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.376298 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Franco] call fnc_teleport;";
};
class RscButton_1602: RscButton
{
	idc = 1602;
	text = "Campo Morteros";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.417532 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Morteros] call fnc_teleport;";
};
class RscButton_1603: RscButton
{
	idc = 1603;
	text = "Practicas Demoliciones";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.458766 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Demoliciones] call fnc_teleport;";
};
class RscButton_1604: RscButton
{
	idc = 1604;
	text = "Base Aerea";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_BAerea] call fnc_teleport;";
};
/* class RscButton_1606: RscButton
{
	idc = 1606;
	text = "Drone spawner";
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.541234 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Franco] call fnc_teleport;";
};
class RscButton_1607: RscButton
{
	idc = 1607;
	text = "Jet spawner"; //--- ToDo: Localize;
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.582468 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Franco] call fnc_teleport;";
};
class RscButton_1605: RscButton
{
	idc = 1605;
	text = "Shooting range"; //--- ToDo: Localize;
	x = 0.306641 * safezoneW + safezoneX;
	y = 0.623702 * safezoneH + safezoneY;
	w = 0.108036 * safezoneW;
	h = 0.0343169 * safezoneH;
	action="[TP_Franco] call fnc_teleport;";
};*/

class RscFrame_1801: RscFrame //Efecto 3D boton Cerrar
{
	idc = 1801;
	x = 0.421224 * safezoneW + safezoneX;
	y = 0.280086 * safezoneH + safezoneY;
	w = 0.272135 * safezoneW;
	h = 0.426084 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {1,1,1,1};
	colorActive[] = {1,1,1,1};
};
class RscShortcutButton_1700: RscShortcutButton
{
	idc = 1700;
	text = "Cerrar";
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.67868 * safezoneH + safezoneY;
	w = 0.0644531 * safezoneW;
	h = 0.0274893 * safezoneH;
	action="closeDialog 0";
};
};};