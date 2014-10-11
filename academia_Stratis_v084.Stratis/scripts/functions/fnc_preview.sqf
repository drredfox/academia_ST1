//DESCRIPCION:	Previsualiza el vehiculo seleccionado en el menu.
//REQUIERE:		dialogs\defines.hpp | dialogs\vehiclespawner.hpp" | fnc_spawn_menu.sqf | fnc_vehs_spawn.sqf | requiere de un helipuerto invisible para la muestra y de otro diferente para el Spawn.
//COMPILACION:	call compile preprocessFileLineNumbers "ruta\fnc_preview.sqf";

fnc_preview = {
disableSerialization;
if(!isNil "preview_veh")then{deleteVehicle preview_veh;};
_string=lbText [1501,lbCurSel 1501];
_array=call compile _string;
_lbCursel=lbCurSel 1502;
_cname=_array select _lbCursel;
CurVeh=_cname;
preview_veh=CurVeh createVehicleLocal (position preview);
preview_veh allowDamage false;
preview_veh setDir (direction preview);
preview_veh setpos ([position preview,[0,0,0.1]] call BIS_fnc_vectorAdd);
_icon=getText (configfile >> "CfgVehicles" >> CurVeh >>  "Icon");
ctrlSetText[1200,_icon];
_weaps=weapons preview_veh;
preview_veh engineOn true;
Player action ["lightOn", preview_veh];
Player action ["CollisionLightOn", preview_veh];
_dispV1=finddisplay 5;
_contrl1=_dispV1 DisplayCtrl 1101;
_wepNumber="Arma 1:";
if(count _weaps ==0)then{_wepNumber="";_weaps=["Este vehiculo esta desarmado"]};
_ttext="<t shadow='2'><t size='1.7'><t color='#ffffff'>Armamento</t></t></t>"+"<br /><t size='1.2'><t align='left'>"+_wepNumber+" "+(_weaps select 0)+"</t></t><br />";
if((count _weaps >1))then{_ttext=_ttext+"<t size='1.2'><t align='left'>Arma 2: "+(_weaps select 1)+"                                               </t></t>"};
if((count _weaps >2))then{_ttext=_ttext+"<t size='1.2'><t align='left'>Arma 3: "+(_weaps select 2)+"                                               </t></t>"};
if((count _weaps >3))then{_ttext=_ttext+"<t size='1.2'><t align='left'>Arma 4: "+(_weaps select 3)+"                                               </t></t>"};
if((count _weaps >4))then{_ttext=_ttext+"<t size='1.2'><t align='left'>Arma 5: "+(_weaps select 4)+"                                               </t></t>"};
if((count _weaps >5))then{_ttext=_ttext+"<t size='1.2'><t align='left'>Arma 6: "+(_weaps select 5)+"                                               </t></t>"};
_contrl1 ctrlsetstructuredText parseText _ttext;
};