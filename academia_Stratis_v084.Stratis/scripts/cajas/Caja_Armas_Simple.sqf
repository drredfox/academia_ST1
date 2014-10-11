//null = this execvm "scripts\cajas\Caja_Armas_Simple.sqf";

_this allowDamage false;

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

//Pistolas

_this addWeaponCargoGlobal ["hgun_P07_F",10];
_this addWeaponCargoGlobal ["hgun_PDW2000_F",10];
_this addWeaponCargoGlobal ["hgun_Rook40_F",10];
_this addWeaponCargoGlobal ["hgun_ACPC2_F",10];

//SMG

_this addWeaponCargoGlobal ["SMG_01_F",10];
_this addWeaponCargoGlobal ["SMG_02_F",10];

//Rifles

_this addWeaponCargoGlobal ["srifle_EBR_F",20];

_this addWeaponCargoGlobal ["srifle_GM6_F",20];
_this addWeaponCargoGlobal ["srifle_LRR_F",20];
_this addWeaponCargoGlobal ["LMG_Mk200_F",20];
_this addWeaponCargoGlobal ["LMG_Zafir_F",20];

_this addWeaponCargoGlobal ["arifle_Katiba_F",20];
_this addWeaponCargoGlobal ["arifle_Katiba_C_F",20];
_this addWeaponCargoGlobal ["arifle_Katiba_GL_F",20];

_this addWeaponCargoGlobal ["arifle_MXC_F",20];
_this addWeaponCargoGlobal ["arifle_MX_F",20];
_this addWeaponCargoGlobal ["arifle_MX_GL_F",20];
_this addWeaponCargoGlobal ["arifle_MX_SW_F",20];
_this addWeaponCargoGlobal ["arifle_MXM_F",20];

_this addWeaponCargoGlobal ["arifle_SDAR_F",20];

_this addWeaponCargoGlobal ["arifle_TRG21_F",20];
_this addWeaponCargoGlobal ["arifle_TRG20_F",20];

_this addWeaponCargoGlobal ["arifle_Mk20_F",20];
_this addWeaponCargoGlobal ["arifle_Mk20C_F",20];
_this addWeaponCargoGlobal ["arifle_Mk20_GL_F",20];

_this addWeaponCargoGlobal ["arifle_Mk20_plain_F",20];
_this addWeaponCargoGlobal ["arifle_Mk20C_plain_F",20];
_this addWeaponCargoGlobal ["arifle_Mk20_GL_plain_F",20];

//Municion
_this addMagazineCargoGlobal ["30Rnd_9x21_Mag",200];
_this addMagazineCargoGlobal ["16Rnd_9x21_Mag",200];
_this addMagazineCargoGlobal ["9Rnd_45ACP_Mag",200];
_this addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01",200];
_this addMagazineCargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",200];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag",200];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",200];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Green",200];
_this addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow",200];
_this addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",200];
_this addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag",200];
_this addMagazineCargoGlobal ["30Rnd_65x39_caseless_green",200];
_this addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer",200];
_this addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer",200];
_this addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag",200];
_this addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer",200];
_this addMagazineCargoGlobal ["200Rnd_65x39_cased_Box",200];
_this addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer",200];
_this addMagazineCargoGlobal ["20Rnd_762x51_Mag",200];
_this addMagazineCargoGlobal ["150Rnd_762x51_Box",200];
_this addMagazineCargoGlobal ["150Rnd_762x51_Box_Tracer",200];
_this addMagazineCargoGlobal ["5Rnd_127x108_Mag",200];
_this addMagazineCargoGlobal ["7Rnd_408_Mag",200];

//GL
_this addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",50];
_this addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",50];
_this addMagazineCargoGlobal ["UGL_FlareWhite_F",50];
_this addMagazineCargoGlobal ["UGL_FlareGreen_F",50];
_this addMagazineCargoGlobal ["UGL_FlareRed_F",50];
_this addMagazineCargoGlobal ["UGL_FlareYellow_F",50];
_this addMagazineCargoGlobal ["UGL_FlareCIR_F",50];
_this addMagazineCargoGlobal ["3Rnd_HE_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_Smoke_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokeRed_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokeGreen_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokeYellow_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokePurple_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokeBlue_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_SmokeOrange_Grenade_shell",50];
_this addMagazineCargoGlobal ["3Rnd_UGL_FlareWhite_F",50];
_this addMagazineCargoGlobal ["3Rnd_UGL_FlareGreen_F",50];
_this addMagazineCargoGlobal ["3Rnd_UGL_FlareRed_F",50];
_this addMagazineCargoGlobal ["3Rnd_UGL_FlareYellow_F",50];
_this addMagazineCargoGlobal ["3Rnd_UGL_FlareCIR_F",50];

//Bengalas
_this addMagazineCargoGlobal ["FlareWhite_F",50];
_this addMagazineCargoGlobal ["FlareGreen_F",50];
_this addMagazineCargoGlobal ["FlareRed_F",50];
_this addMagazineCargoGlobal ["FlareYellow_F",50];

  sleep 600;
 };
};