//this addAction ["Abrir","scripts\cajas\caja_Ropa.sqf"];

private ["_unit","_dialog","_U_Blufor","_U_Civilian","_U_Independent","_U_Opfor","_V_All","_B_All","_H_All","_G_All","_vconfig","_index","_selected","_type"];

_unit = _this select 1;

_dialog = createdialog "equipCrate_Dialog";

THR_ecTransf = false;
THR_ecType = "Uniform";
THR_ecChanged = false;

//Uniformes
_U_Blufor = [
	"U_B_CombatUniform_mcam",
	"U_B_CombatUniform_mcam_tshirt",
	"U_B_CombatUniform_mcam_vest",
	"U_B_CombatUniform_mcam_worn",
	"U_B_GhillieSuit",
	"U_B_HeliPilotCoveralls",
	"U_B_PilotCoveralls",
	"U_B_SpecopsUniform_sgg",
	"U_B_Wetsuit"
];
_U_Civilian = [
	"U_Rangemaster",
	"U_Competitor",
	"U_OrestesBody",
	"U_NikosBody",
	"U_C_HunterBody_grn",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Poor_1",
	"U_C_WorkerCoveralls"
];
_U_Independent = [
	"U_I_CombatUniform",
	"U_I_CombatUniform_shortsleeve",
	"U_I_GhillieSuit",
	"U_I_HeliPilotCoveralls",
	"U_I_OfficerUniform",
	"U_I_pilotCoveralls",
	"U_I_Wetsuit",
	"U_IG_Guerilla1_1",
	"U_IG_Guerilla2_2",
	"U_IG_Guerilla2_3",
	"U_IG_Guerilla3_1",
	"U_IG_Guerilla3_2",
	"U_IG_leader"
];
_U_Opfor = [
	"U_O_CombatUniform_ocamo",
	"U_O_CombatUniform_oucamo",
	"U_O_GhillieSuit",
	"U_O_OfficerUniform_ocamo",
	"U_O_PilotCoveralls",
	"U_O_Wetsuit"
];
	
//Chalecos
_V_All = [
	"V_BandollierB_blk",
	"V_BandollierB_cbr",
	"V_BandollierB_khk",
	"V_BandollierB_oli",
	"V_BandollierB_rgr",
	"V_Chestrig_blk",
	"V_Chestrig_khk",
	"V_Chestrig_oli",
	"V_Chestrig_rgr",
	"V_HarnessO_brn",
	"V_HarnessO_gry",
	"V_HarnessOGL_brn",
	"V_HarnessOGL_gry",
	"V_HarnessOSpec_brn",
	"V_HarnessOSpec_gry",
	"V_PlateCarrier1_blk",
	"V_PlateCarrier1_rgr",
	"V_PlateCarrier2_rgr",
	"V_PlateCarrier3_rgr",
	"V_PlateCarrierGL_rgr",
	"V_PlateCarrierIA1_dgtl",
	"V_PlateCarrierIA2_dgtl",
	"V_PlateCarrierIAGL_dgtl",
	"V_PlateCarrierSpec_rgr",
	"V_Rangemaster_belt",
	"V_RebreatherB",
	"V_RebreatherIA",
	"V_RebreatherIR",
	"V_TacVest_blk",
	"V_TacVest_blk_POLICE",
	"V_TacVest_brn",
	"V_TacVest_camo",
	"V_TacVest_khk",
	"V_TacVest_oli",
	"V_TacVestCamo_khk",
	"V_TacVestIR_blk"
];

//Mochilas
_B_All = [
	"B_Parachute",
	"B_AssaultPack_blk",
	"B_AssaultPack_cbr",
	"B_AssaultPack_dgtl",
	"B_AssaultPack_rgr",
	"B_AssaultPack_ocamo",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	"B_AssaultPack_sgg",
	"B_Bergen_blk",
	"B_BergenC_blu",
	"B_Bergen_rgr",
	"B_Bergen_mcamo",
	"B_BergenC_red",
	"B_Bergen_sgg",
	"B_Carryall_cbr",
	"B_Carryall_ocamo",
	"B_Carryall_khk",
	"B_Carryall_mcamo",
	"B_Carryall_oli",
	"B_Carryall_oucamo",
	"B_FieldPack_blk",
	"B_FieldPack_cbr",
	"B_FieldPack_ocamo",
	"B_FieldPack_khk",
	"B_FieldPack_oli",
	"B_FieldPack_oucamo",
	"B_HuntingBackpack",
	"B_Kitbag_cbr",
	"B_Kitbag_mcamo",
	"B_Kitbag_sgg",
	"B_OutdoorPack_blk",
	"B_OutdoorPack_blu",
	"B_OutdoorPack_tan",
	"B_TacticalPack_blk",
	"B_TacticalPack_rgr",
	"B_TacticalPack_ocamo",
	"B_TacticalPack_mcamo",
	"B_TacticalPack_oli",
	"B_GMG_01_A_weapon_F",
	"B_HMG_01_A_weapon_F",
	"B_HMG_01_weapon_F",
	"B_HMG_01_high_weapon_F",
	"B_HMG_01_A_high_weapon_F",
	"B_GMG_01_weapon_F",
	"B_GMG_01_high_weapon_F",
	"B_GMG_01_A_high_weapon_F",
	"B_Mortar_01_support_F",
	"B_Mortar_01_weapon_F",
	"B_HMG_01_support_F",
	"B_HMG_01_support_high_F",
	"B_AA_01_weapon_F",
	"B_AT_01_weapon_F",
	"B_UAV_01_backpack_F"
];
	
//Accesorios cabeza
_H_All = [
	"H_Bandanna_camo",
	"H_Bandanna_cbr",
	"H_Bandanna_gry",
	"H_Bandanna_khk",
	"H_Bandanna_mcamo",
	"H_Bandanna_sgg",
	"H_Bandanna_surfer",
	"H_BandMask_blk",
	"H_BandMask_demon",
	"H_BandMask_khk",
	"H_BandMask_reaper",
	"H_Beret_blk",
	"H_Beret_blk_POLICE",
	"H_Beret_brn_SF",
	"H_Beret_grn",
	"H_Beret_grn_SF",
	"H_Beret_ocamo",
	"H_Beret_red",
	"H_Booniehat_dgtl",
	"H_Booniehat_dirty",
	"H_Booniehat_grn",
	"H_Booniehat_indp",
	"H_Booniehat_khk",
	"H_Booniehat_mcamo",
	"H_Booniehat_tan",
	"H_Cap_blk",
	"H_Cap_blk_CMMG",
	"H_Cap_blk_ION",
	"H_Cap_blk_Raven",
	"H_Cap_blu",
	"H_Cap_brn_SPECOPS",
	"H_Cap_grn",
	"H_Cap_grn_BI",
	"H_Cap_headphones",
	"H_Cap_khaki_specops_UK",
	"H_Cap_oli",
	"H_Cap_red",
	"H_Cap_tan",
	"H_Cap_tan_specops_US",
	"H_CrewHelmetHeli_B",
	"H_CrewHelmetHeli_I",
	"H_CrewHelmetHeli_O",
	"H_Hat_blue",
	"H_Hat_brown",
	"H_Hat_camo",
	"H_Hat_checker",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_HelmetB",
	"H_HelmetB_camo",
	"H_HelmetB_light",
	"H_HelmetB_paint",
	"H_HelmetB_plain_blk",
	"H_HelmetB_plain_mcamo",
	"H_HelmetCrew_B",
	"H_HelmetCrew_I",
	"H_HelmetCrew_O",
	"H_HelmetIA",
	"H_HelmetIA_camo",
	"H_HelmetIA_net",
	"H_HelmetLeaderO_ocamo",
	"H_HelmetLeaderO_oucamo",
	"H_HelmetO_ocamo",
	"H_HelmetO_oucamo",
	"H_HelmetSpecB",
	"H_HelmetSpecB_blk",
	"H_HelmetSpecB_paint1",
	"H_HelmetSpecB_paint2",
	"H_HelmetSpecO_blk",
	"H_HelmetSpecO_ocamo",
	"H_MilCap_blue",
	"H_MilCap_dgtl",
	"H_MilCap_gry",
	"H_MilCap_mcamo",
	"H_MilCap_ocamo",
	"H_MilCap_oucamo",
	"H_MilCap_rucamo",
	"H_PilotHelmetFighter_B",
	"H_PilotHelmetFighter_I",
	"H_PilotHelmetFighter_O",
	"H_PilotHelmetHeli_B",
	"H_PilotHelmetHeli_I",
	"H_PilotHelmetHeli_O",
	"H_Shemag_khk",
	"H_Shemag_olive",
	"H_Shemag_tan",
	"H_ShemagOpen_khk",
	"H_ShemagOpen_tan",
	"H_StrawHat",
	"H_StrawHat_dark",
	"H_TurbanO_blk",
	"H_Watchcap_blk",
	"H_Watchcap_camo",
	"H_Watchcap_khk",
	"H_Watchcap_sgg"
];

//Gafas
_G_All = [
	"G_Aviator",
	"G_Combat",
	"G_Diving",
	"G_Lady_Blue",
	"G_Lady_Dark",
	"G_Lady_Mirror",
	"G_Lady_Red",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Shades_Green",
	"G_Shades_Red",
	"G_Spectacles",
	"G_Spectacles_Tinted",
	"G_Sport_Blackred",
	"G_Sport_BlackWhite",
	"G_Sport_Blackyellow",
	"G_Sport_Checkered",
	"G_Sport_Greenblack",
	"G_Sport_Red",
	"G_Squares",
	"G_Squares_Tinted",
	"G_Tactical_Black",
	"G_Tactical_Clear"
];	
	
while {(dialog) && (alive player)} do
{
	if(THR_ecType != "") then {
		lbClear 2701;
		switch(THR_ecType) do 
		{
			case "Uniform": 
			{
				_type = "Uniform";
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _U_Blufor;
				
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _U_Opfor;
				
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _U_Independent;
				
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _U_Civilian;
			};
			
			case "Vest":
			{
				_type = "Vest";
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _V_All;
			};
			
			case "Backpack":
			{
				_type = "Backpack";
				{
					_vconfig = configFile >> "CfgVehicles" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _B_All;
			};
			
			case "Headgear":
			{
				_type = "Headgear";
				{
					_vconfig = configFile >> "CfgWeapons" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _H_All;
			};
			
			case "Glasses":
			{
				_type = "Glasses";
				{
					_vconfig = configFile >> "CfgGlasses" >> _x;
					_index = lbAdd [2701,getText(_vconfig >> "displayName")];
					lbSetData[2701,_index,_x];
					lbSetPicture [2701,_index,getText(_vconfig >> "picture")];
				} foreach _G_All;
			};
		
			default
			{
				hint "Error en el script de caja de equipo [tipo 1]";
			};
		
		};
		THR_ecType = "";
	};
	
	if(THR_ecTransf) then {
		_selected = lbCurSel 2701;
		if(_selected != -1) then {
			switch(_type) do 
			{
				case "Uniform": 
				{
					removeUniform _unit;
					_unit addUniform (lbData [2701, _selected]);
				};
				
				case "Vest":
				{
					removeVest _unit;
					_unit addVest (lbData [2701, _selected]);
				};
				
				case "Backpack":
				{
					removeBackpack _unit;
					_unit addBackpack (lbData [2701, _selected]);
				};
				
				case "Headgear":
				{
					removeHeadgear _unit;
					_unit addHeadgear (lbData [2701, _selected]);
				};
				
				case "Glasses":
				{
					removeGoggles _unit;
					_unit addGoggles (lbData [2701, _selected]);
				};
				
				default
				{
					hint "Error en el script de caja de equipo [tipo 2]";
				};
			
			};
		};
		hintSilent "Objeto equipado";
		THR_ecTransf = false;
	};
};