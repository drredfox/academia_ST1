//null = this execvm "thr\scripts\cajas\Caja_Objetos.sqf";

_this allowDamage false;

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

 //Objetos
_this addItemCargoGlobal ["ItemWatch",50];
_this addItemCargoGlobal ["ItemCompass",50];
_this addItemCargoGlobal ["ItemGPS",50];
_this addItemCargoGlobal ["ItemRadio",50];
_this addItemCargoGlobal ["ItemMap",50];
_this addItemCargoGlobal ["FirstAidKit",100];
_this addItemCargoGlobal ["Medikit",100];
_this addItemCargoGlobal ["ToolKit",100];
_this addItemCargoGlobal ["B_UavTerminal",100];

 //Accesorios armas

_this addItemCargoGlobal ["muzzle_snds_H",50];
_this addItemCargoGlobal ["muzzle_snds_L",50];
_this addItemCargoGlobal ["muzzle_snds_M",50];
_this addItemCargoGlobal ["muzzle_snds_B",50];
_this addItemCargoGlobal ["muzzle_snds_H_MG",50];

_this addItemCargoGlobal ["optic_Arco",50];
_this addItemCargoGlobal ["optic_Hamr",50];
_this addItemCargoGlobal ["optic_Aco",50];
_this addItemCargoGlobal ["optic_ACO_grn",50];
_this addItemCargoGlobal ["optic_Holosight",50];
_this addItemCargoGlobal ["optic_SOS",50];
_this addItemCargoGlobal ["acc_flashlight",50];
_this addItemCargoGlobal ["acc_pointer_IR",50];
_this addItemCargoGlobal ["optic_MRCO",50];
_this addItemCargoGlobal ["optic_aco_smg",50];
_this addItemCargoGlobal ["optic_Holosight_smg",50];
_this addItemCargoGlobal ["optic_Nightstalker",50];
_this addItemCargoGlobal ["optic_NVS",50];
_this addItemCargoGlobal ["optic_tws",50];


_this addItemCargoGlobal ["NVGoggles",50];

_this addWeaponCargoGlobal ["Binocular",50];
_this addWeaponCargoGlobal ["Rangefinder",50];
_this addWeaponCargoGlobal ["Laserdesignator",50];

_this addMagazineCargoGlobal ["Laserbatteries",50];

//Luces
_this addMagazineCargoGlobal ["Chemlight_green",50];
_this addMagazineCargoGlobal ["Chemlight_red",50];
_this addMagazineCargoGlobal ["Chemlight_yellow",50];
_this addMagazineCargoGlobal ["Chemlight_blue",50];

  sleep 600;
 };
};