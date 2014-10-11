private ["_name", "_length", "_check"];

_name = toArray (toLower format["%1", _this select 0]);
_check = (toLower format["%1", _this select 1]);
_length = count toArray (_check);
_name resize _length;
(toString _name) == (_check)