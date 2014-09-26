//null = this execvm "thr\scripts\cajas\cajaRadios.sqf";

_this allowDamage false;

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

 _this additemcargoGlobal ["ItemRadio",50];
 _this addBackpackCargoGlobal ["tf_anprc155",10];
 _this addBackpackCargoGlobal ["tf_rt1523g",10];
 _this addBackpackCargoGlobal ["tf_mr3000",10];

  sleep 600;
 };
};