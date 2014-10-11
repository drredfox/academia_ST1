// Ajustes XMedSys ST1
X39_MedSys_LifeTime=1200;

X39_MedSys_Display_TimeBeforeRespawnAvailable_NormalKnockout=10; //Tiempo respawn
X39_MedSys_Display_TimeBeforeRespawnAvailable_Death=10; //Tiempo Respawn
X39_MedSys_var_Pain_MorphineHealValue=3; //Multiplicador efectividad morfina
X39_MedSys_BandageBleedingHeal=5; //Multiplicador efectividad venda
X39_MedSys_Healing_MedKitValue=10; //Multiplicador efectividad Medkit
X39_MedSys_Settings_EnableCamShake=false;
X39_MedSys_Generic_DamageBeforeDead=8;
X39_MedSys_Generic_DamageBeforeKnockOut=8;
X39_MedSys_Generic_DamageBeforePermaKnockOut=8;
X39_MedSys_Bleeding_BloodLossPerTickModificator = 0.5; //Multiplicador hemorragia (+-300s)
X39_MedSys_Bleeding_KnockOutBloodLimit = 3000; //Limite de sangre para perder el conocimiento (def:6000)

if (medico == 1) then {
//Limitar opciones medicas (solo medico puede curar completamente)
#define BANDAGE "Bandage"
#define BLOOD "Blood"
#define DEFIBRILATE "Dephibrilate"
#define EPINEPHRINE "Epinephrine"
#define MORPHINE "Morphine"
#define MEDKIT "MedKit"
#define TOURNIQUET "Tourniquet"

["Epinephrine", "B_medic_F"] call X39_MedSys_fnc_addLimitationToClass;
["Blood", "B_medic_F"] call X39_MedSys_fnc_addLimitationToClass;
["Dephibrilate", "B_medic_F"] call X39_MedSys_fnc_addLimitationToClass;
["MedKit", "B_medic_F"] call X39_MedSys_fnc_addLimitationToClass;
[] call X39_MedSys_fnc_pushLimitations;
};

//Confirma
hint "XMedSys inicializado con exito";