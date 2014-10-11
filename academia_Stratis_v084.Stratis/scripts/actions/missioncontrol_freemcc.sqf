private["_caller","_text"];

_caller = _this select 1;

if(mcc_missionmaker != "") then { 
	_text = format["MCC: %1 Ha liberado el control de MCC Sandbox.",format["%1",name _caller]];
	[[[netid _caller,_caller],_text,false], "MCC_fnc_groupchat", true, false] spawn BIS_fnc_MP;
	mcc_missionmaker="";
	publicVariable "mcc_missionmaker";
}else{
	hint "MCC: No hay nadie controlando el MCC Sandbox";
};