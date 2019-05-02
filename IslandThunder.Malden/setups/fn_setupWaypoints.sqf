// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_helicopter", "_movePosition", "_targetPosition"];
_helicopter = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _helicopter) exitWith {};

_movePosition = [1039,735.611,-0.316411];
_helicopter doMove _movePosition;
_helicopter flyInHeight 500;

_targetPosition = [7271.61,7965.34,0.00143433];
_targetPosition