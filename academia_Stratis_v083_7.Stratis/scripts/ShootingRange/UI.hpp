

class ASORSR_TargetView {
	idd = 899999;
	movingEnable = false;
	enableSimulation = true;
	duration = 10;
	controlsBackground[] = { };
	controls[] = {TargetImage, Bullet1, Bullet2, Bullet3, Bullet4, Bullet5, Bullet6, Bullet7, Bullet8, Bullet9, Bullet10, Bullet11, Bullet12, Bullet13, Bullet14, Bullet15, Bullet16, Bullet17, Bullet18, Bullet19, Bullet20, Bullet21, Bullet22, Bullet23, Bullet24, Bullet25, Bullet26, Bullet27, Bullet28, Bullet29, Bullet30 };
	objects[] = {};
	onLoad = "uiNamespace setVariable ['ASORSR_TargetView',  (_this select 0)]";

	class TargetImage : ASORSR_RscPicture{
		idc = 899998;
		text = "images\target_inf3_acc1_co_UI.paa";
		x = safeZoneX;
		y = safeZoneY;
		w = (1/20)*5;
		h = (1/20)*10;
	};
	class Bullet1 : ASORSR_RscPicture{
		idc = 900000;
		w = (1/25);
		h = (1/25);
		x = -1000;
		y = -1000;
		text =  "images\whitex.paa";
	};
	class Bullet2 : Bullet1 {idc = 900001;};
	class Bullet3 : Bullet1 {idc = 900002;};
	class Bullet4 : Bullet1 {idc = 900003;};
	class Bullet5 : Bullet1 {idc = 900004;};
	class Bullet6 : Bullet1 {idc = 900005;};
	class Bullet7 : Bullet1 {idc = 900006;};
	class Bullet8 : Bullet1 {idc = 900007;};
	class Bullet9 : Bullet1 {idc = 900008;};
	class Bullet10 : Bullet1 {idc = 900009;};
	class Bullet11 : Bullet1 {idc = 900010;};
	class Bullet12 : Bullet1 {idc = 900011;};
	class Bullet13 : Bullet1 {idc = 900012;};
	class Bullet14 : Bullet1 {idc = 900013;};
	class Bullet15 : Bullet1 {idc = 900014;};
	class Bullet16 : Bullet1 {idc = 900015;};
	class Bullet17 : Bullet1 {idc = 900016;};
	class Bullet18 : Bullet1 {idc = 900017;};
	class Bullet19 : Bullet1 {idc = 900018;};
	class Bullet20 : Bullet1 {idc = 900019;};
	class Bullet21 : Bullet1 {idc = 900020;};
	class Bullet22 : Bullet1 {idc = 900021;};
	class Bullet23 : Bullet1 {idc = 900022;};
	class Bullet24 : Bullet1 {idc = 900023;};
	class Bullet25 : Bullet1 {idc = 900024;};
	class Bullet26 : Bullet1 {idc = 900025;};
	class Bullet27 : Bullet1 {idc = 900026;};
	class Bullet28 : Bullet1 {idc = 900027;};
	class Bullet29 : Bullet1 {idc = 900028;};
	class Bullet30 : Bullet1 {idc = 900029;};
};