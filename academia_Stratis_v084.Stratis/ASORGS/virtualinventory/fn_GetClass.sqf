#include "macro.sqf"
_input = _this;
_ret = "";
if((typeName _this) == "STRING") exitWith { _this };
if((typeName _this) == "ARRAY") exitWith { _this select DBF_Class; };

