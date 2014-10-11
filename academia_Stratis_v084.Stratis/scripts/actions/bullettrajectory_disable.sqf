private ["_unit","_actid"];
_unit = _this select 1;
_actid = _this select 2;
_unit removeEventHandler ["fired", THR_BTrajectoryEH];
_unit removeAction _actid;
THR_BTrajectoryRunning = false;