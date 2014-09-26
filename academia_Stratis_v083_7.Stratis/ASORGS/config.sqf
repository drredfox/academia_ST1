//ASORGS_Debug = true;

//========================================================Added in v1.4
 //Wait this many seconds for TFAR/ACRE to assign a radio before adding items. Can not re-open ASORGS during this time.
ASORGS_UniqueRadioWaitTime = 6;


//========================================================Changed in v1.3
//Disable loading unique TFAR/ACRE radios to prevent duplicate IDs being created (was ASORGS_DisableLoadingTFARRadios). 
ASORGS_DisableLoadingUniqueRadios = true;


ASORGS_ShowUniform = true;
ASORGS_ShowVest = true;
ASORGS_ShowBackpack = true;
ASORGS_ShowPrimaryWeapon = true;
ASORGS_ShowPrimaryAddons = true;
ASORGS_ShowLauncher= true;
ASORGS_ShowLauncherAddons = true;
ASORGS_ShowHeadgear = true;
ASORGS_ShowHandgun = true;
ASORGS_ShowHandgunAddons = true;
ASORGS_ShowExplosives = true;
ASORGS_ShowGrenades = true;
ASORGS_ShowExtraAmmo = true;
ASORGS_ShowExtraAttachments = true;
ASORGS_ShowGoggles = true;
ASORGS_ShowNightvision = true;
ASORGS_ShowBinoculars = true;
ASORGS_ShowMedical = true;
ASORGS_ShowMisc = true;
//========================================================New in v1.2
//Stop BTC revive from changing your gear.
ASORGS_BTCReviveWorkaround = true;

//========================================================New in v1.1
//Reapply gear that was selected when ASORGS was closed when respawning.
ASORGS_ReapplyOnRespawn = true;

//Weapons that get ASDG_JointRails attachments that don't work. ASORGS load any ASDG_JointRails attachments for these guns. Doesn't effect anything if ASDG_JointRails isn't enabled.
ASORGS_IgnoreJointRails = ["caf_AK47", "caf_AK74", "caf_AK74gl", "caf_pkm", "caf_rpg7", "caf_rpk74", "caf_Strela", "caf_svd"];

//Uses the unit insignia as the background logo if they have one.
ASORGS_UnitInsigniaAsBackground = true;

//Allows player to choose/load insignia.
ASORGS_UnitInsigniaOption = true;

//========================================================New in v1.0
//VAS prefix to use for making saves compatible. default = "VAS"
ASORGS_VAS_Prefix = "VAS";

//Maximum number of save slots
ASORGS_SaveSlots = 14;
 
//Show the "weights" (backpack space taken) for relevant objects
ASORGS_ShowWeights = false;

//Items that belong in the grenades category
ASORGS_throwable =["HandGrenade","MiniGrenade","HandGrenade_Stone","SmokeShell","SmokeShellRed","SmokeShellGreen","SmokeShellYellow","SmokeShellPurple","SmokeShellBlue","SmokeShellOrange","Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","ADF_F1_GRENADE","ADF_F3_Practice","B_IR_Grenade","O_IR_Grenade","I_IR_Grenade"];

//Items that belong in the explosives category
ASORGS_explosives = ["ATMine_Range_Mag","APERSMine_Range_Mag","APERSBoundingMine_Range_Mag","SLAMDirectionalMine_Wire_Mag","APERSTripMine_Wire_Mag","ClaymoreDirectionalMine_Remote_Mag", "SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag"];

//Items that belong in the medical category
ASORGS_medical = ["x39_medikit", "x39_medikit2", "x39_medikit3", "x39_medikit4", "x39_medikit5", "x39_bloodbag", "x39_morphine", "x39_epinephrine", "x39_defibrillator", "x39_tourniquet", "x39_earplug", "x39_bandage", "FirstAidKit", "Medikit", "AGM_Bandage", "AGM_Bloodbag", "AGM_EarBuds", "AGM_Epipen", "AGM_Morphine", "x39_xms2_adrenaline", "x39_xms2_bandage", "x39_xms2_coldSpray", "x39_xms2_defibrillator", "x39_xms2_earplugs", "x39_xms2_heatPack", "x39_xms2_IVBag", "x39_xms2_mediPack", "x39_xms2_morphine", "x39_xms2_naloxone", "x39_xms2_sphygmomanometer", "x39_xms2_tourniquet"];

//Items that for some reason get detected as something else (minedetector = launcher?). Forces them into Misc.
ASORGS_forceMisc = ["MineDetector", "AGM_SpareBarrel", "AGM_UAVBattery", "AGM_CableTie", "AGM_IR_Strobe_Item", "AGM_MapTools", "ToolKit", "AGM_Clacker", "AGM_DefusalKit", "AGM_ExplosiveItem", "AGM_ItemKestrel" ];

//World names for maps that show the light too bright at night. Check the names with the 'worldName' command.
ASORGS_brightMaps = []; //pja305 v6 or less

//Prevent uniforms from the wrong side(s) being shown
ASORGS_UniformSideRestriction = true;

//Background logo. Can be in a mod or in a mission. .paa (recommended) or .jpg
ASORGS_BackgroundLogo = "A3\ui_f\data\Logos\arma3_expansion_ca.paa";
//ASORGS_BackgroundLogo = "clan_logo.jpg"; //Image in your mission folder.
//ASORGS_BackgroundLogo = "clan-textures\clan_logo.paa"; //Image in clan-textures.pbo addon

//Background tile (Arma 3 loading screen noise)
ASORGS_BackgroundTile = "A3\ui_f\data\GUI\cfg\LoadingScreens\loadingnoise_ca.paa";

//Items that should not be shown in any lists
ASORGS_Blacklist = [];
//You can also add a blacklist per side AND/OR per faction. All blacklists that match player when ASORGS is opened will be included. Examples:
//ASORGS_Blacklist_WEST = []; //hide items for all west units
//ASORGS_Blacklist_BLU_F = []; //hide items for all NATO (class name BLU_F) units

//Only these items will show in any lists. Items not in these lists will be removed when opening ASORGS. Only base radios from TFAR / ACRE need to be added.
//ASORGS_Whitelist ["ItemRadio"];
//You can also add a whitelist per side and/or per faction. Items in this list MUST also be in ASORGS_Whitelist if it exists.
//ASORGS_Blacklist_WEST = ["ItemRadio"]; //hide items for all west units
//ASORGS_Blacklist_BLU_F = ["ItemRadio"]; //hide items for all NATO (class name BLU_F) units

