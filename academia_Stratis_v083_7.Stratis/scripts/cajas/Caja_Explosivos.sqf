//null = this execvm "thr\scripts\cajas\Caja_Explosivos.sqf";

_this allowDamage false;

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

//Lanzadores

_this addWeaponCargoGlobal ["launch_NLAW_F",10];
_this addWeaponCargoGlobal ["launch_RPG32_F",10];
_this addWeaponCargoGlobal ["launch_B_Titan_F",10];
_this addWeaponCargoGlobal ["launch_B_Titan_short_F",10];

//Municion

_this addMagazineCargoGlobal ["RPG32_F",100];
_this addMagazineCargoGlobal ["NLAW_F",100];
_this addMagazineCargoGlobal ["Titan_AA",100];
_this addMagazineCargoGlobal ["Titan_AP",100];
_this addMagazineCargoGlobal ["Titan_AT",100];

//Granadas
_this addMagazineCargoGlobal ["HandGrenade",50];
_this addMagazineCargoGlobal ["MiniGrenade",50];
_this addMagazineCargoGlobal ["SmokeShell",50];
_this addMagazineCargoGlobal ["SmokeShellRed",50];
_this addMagazineCargoGlobal ["SmokeShellGreen",50];
_this addMagazineCargoGlobal ["SmokeShellYellow",50];
_this addMagazineCargoGlobal ["SmokeShellPurple",50];
_this addMagazineCargoGlobal ["SmokeShellBlue",50];
_this addMagazineCargoGlobal ["SmokeShellOrange",50];

//Minas,C4 etc
_this addMagazineCargoGlobal ["ATMine_Range_Mag",50];
_this addMagazineCargoGlobal ["APERSMine_Range_Mag",50];
_this addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",50];
_this addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",50];
_this addMagazineCargoGlobal ["APERSTripMine_Wire_Mag",50];
_this addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];
_this addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",50];
_this addMagazineCargoGlobal ["DemoCharge_Remote_Mag",50];

  sleep 600;
 };
};