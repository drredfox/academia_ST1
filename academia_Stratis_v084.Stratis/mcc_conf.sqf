
//--------------------- Who can access MCC leave "all" for everbody --------------------------------
//Should be MCC_allowedPlayers = ["12321","1321123"]; Host or server admin will always have access
MCC_allowedPlayers = ["all"];

//--------------------Enable or disable MCC screens -------------------------------------------------------
//Allow start location dialog on JIP or after respawn if disabled player will be teleported to start location without being able to choose where to spawn
MCC_openRespawnMenu = true; //false - disabled

//allow Squad Leader PDA (Mark enemy forces, call for support, order constructions of FOB and military assets - need atleast one more soldier in the player group)
MCC_allowsqlPDA = true; //false - disabled

// allow Commander Console (One per side. Control AI forces, issue WP to friendly players, call support, control UAV, AC-130 and artillery, allow building base)
MCC_allowConsole = true; //false - disabled

//allow squad menu (Enable opening/renaming/changing/locking squads in game and teleport to your squad mate after respaw, also allowing the players to be voted to commanders)
MCC_allowSquadDialog = true; //false - disabled
MCC_allowSquadDialogCamera = true; //Allow watching the player's squad members on squad dialog

//allow MCC logistics (transport resources around from HQ to the battlefield - need to be the driver of NATO,CSAT or GUER open transport truck - open with MCC interaction key)
MCC_allowlogistics = true;  //false - disabled

//----------------- Teleport 2 Team -----------------------------------------------------------------------------
MCC_t2tIndex    = 1;             //0 - Disabled. 1- JIP, 2- AfterRespawn, 3-Always

//--------------------- Default AI skill --------------------------------
MCC_AI_Skill = 0.5;
MCC_AI_Aim = 0.1;
MCC_AI_Spot    = 0.3;
MCC_AI_Command = 0.5;

//---------------------Name Tags---------------------------------------------------
// Show friendly name tags and vhicles' crew info - default - off
MCC_nameTags = false;

//-------------------- Group Markers (Role Selection & Squad Dialog) --------------------------------------------------
//Show group markers on map
MCC_groupMarkers = true;

//-------------------- Save Gear --------------------------------------------------
//Save players gear after respawn
MCC_saveGear = false;

//--------------------logistics -------------------------------------------------------
//Default resources
//[ammo,supply,fuel]
MCC_resWest = [500,500,500];
MCC_resEast = [500,200,0];
MCC_resGUER = [500,200,0];

//------------------------MCC Console--------------------------------------------
//AC-130 ammo count by array [20mm,40mm,105mm]
MCC_ConsoleACAmmo = [500,80,20];

//How much time can an AC-130 stay in the air before he is RTB - seconds
MCC_ConsoleACTime = 380;

//number of virtual cannons
HW_Arti_CannonNumber = 1;

//Show only units were the group leader have a GPS  or inside vehicle
MCC_ConsoleOnlyShowUnitsWithGPS = true;

//Draw group's WP on the console
MCC_ConsoleDrawWP = true;

//Allow live feed to vehicles only and units wearing one of the specific helmets types defined in MCC_ConsoleLiveFeedHelmets
MCC_ConsoleLiveFeedHelmetsOnly = false;
MCC_ConsoleLiveFeedHelmets = ["H_HelmetB","H_HelmetB_paint","H_HelmetB_light","H_HelmetO_ocamo","H_HelmetLeaderO_ocamo","H_HelmetSpecO_ocamo","H_HelmetSpecO_blk"];

//If set to false the console can only command players' groups
MCC_ConsoleCanCommandAI = true;

//If set to true players with GPS or UAVTerminal can see WP assigned to them on the map
MCC_ConsolePlayersCanSeeWPonMap = true;


//------------------------------------------------------------------------------------------------
//
//                                         Role Selection
//
//------------------------------------------------------------------------------------------------
//Activate role selection
CP_activated = true;

//--------------------Gain XP (in role selection)--------------------------------
//Gain XP from killing, leading, healing, driving, flying or completing objectives? if not XP should be handed manully by changing the iniDBi files on the server
CP_gainXP = true;

//Xp needed to gain each level, Exp will raise by 5% more with each level
CP_XPperLevel = 3000;

//Show Exp gaining notifications
CP_expNotifications = true;

//--------------------Default flags -------------------------------------------------------
CP_flagWest = "\a3\Data_f\Flags\flag_nato_co.paa";
CP_flagEast = "\a3\Data_f\Flags\flag_CSAT_co.paa";
CP_flagGUER = "\a3\Data_f\Flags\flag_AAF_co.paa";

//Default starting level and exp [level, exp]    better to define in iniDBI file on the server
CP_defaultLevel = [1,0];

//Default squads names better to define in iniDBI file on the server
CP_defaultGroups = ["Alpha","Bravo","Sierra","CM"];

//Max players per side
CP_maxPlayers = 40;

//Max squads per side
CP_maxSquads = 10;

//--------------------Default Tickets -------------------------------------------------------
MCC_ticketsWest = 200;
MCC_ticketsEast = 200;
MCC_ticketsGUER = 200;