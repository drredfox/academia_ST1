//null = this execvm "caja_tablets.sqf";

if (isServer) then {
 while {true} do {
  if isnull _this exitwith {};
  if not alive _this exitwith {};
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  clearitemcargoGlobal _this;

  _this additemcargoGlobal ["cse_m_tablet",10];
  _this additemcargoGlobal ["cse_m_pda",50];
  _this additemcargoGlobal ["cse_m_tablet_uk",10];

  sleep 600;
 };
};