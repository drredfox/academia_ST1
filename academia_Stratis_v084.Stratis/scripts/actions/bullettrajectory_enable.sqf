private ["_unit"];
_unit = _this select 1;
_unit addAction [("<t color=""#F2FF00"">" + "Desactivar trayectoria balistica" + "</t>"), "thr\scripts\actions\bullettrajectory_disable.sqf"];
THR_BTrajectoryRunning = true;
THR_BTrajectoryEH = player addeventhandler ["fired",{_this spawn THR_Bullet_Trajectory;}];