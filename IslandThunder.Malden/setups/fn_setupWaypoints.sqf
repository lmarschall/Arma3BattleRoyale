// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_helicopter", "_movePosition", "_targetPosition"];
_helicopter = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _helicopter) exitWith {};

_town = getMarkerPos ["marker_town", false];

// _waypoints = calculatePath ["helicopter","careless",_fromPosition,_toPosition];

_helicopter doMove _town;
_helicopter flyInHeight 500;

_town