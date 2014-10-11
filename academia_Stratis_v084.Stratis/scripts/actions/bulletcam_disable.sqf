private ["_unit","_actid"];
_unit = _this select 1;
_actid = _this select 2;
_unit removeEventHandler ["fired", bulletcam_ehindex];
_unit removeAction _actid;
bulletcam_enabled = false;