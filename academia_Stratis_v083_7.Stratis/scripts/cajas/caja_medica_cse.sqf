//null = this execvm "thr\scripts\cajas\caja_medica_cse.sqf";

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

  _this additemcargoGlobal ["cse_packing_bandage",100];
  _this additemcargoGlobal ["cse_quikclot",100];
  _this additemcargoGlobal ["cse_bandageElastic",100];
  _this additemcargoGlobal ["cse_tourniquet",100];
  _this additemcargoGlobal ["cse_bandage_basic",100];

  _this additemcargoGlobal ["cse_nasopharyngeal_tube",100];

  _this additemcargoGlobal ["cse_morphine",100];
  _this additemcargoGlobal ["cse_epinephrine",100];
  _this additemcargoGlobal ["cse_atropine",100];

  _this additemcargoGlobal ["cse_blood_iv",100];
  _this additemcargoGlobal ["cse_saline_iv",100];
  _this additemcargoGlobal ["cse_saline_iv_500",100];
  _this additemcargoGlobal ["cse_saline_iv_250",100];
  _this additemcargoGlobal ["cse_plasma_iv",100];

  _this additemcargoGlobal ["cse_personal_aid_kit",100];

  sleep 600;
 };
};