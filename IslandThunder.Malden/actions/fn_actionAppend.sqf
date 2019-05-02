// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_player"];
_player = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if(isNull _player) exitWith {};

gameQueue pushBack _player;
removeAllActions _player;