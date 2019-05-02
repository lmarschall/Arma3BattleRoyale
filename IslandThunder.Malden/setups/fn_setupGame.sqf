// call it_fnc_setupGame;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_helicopter", "_town", "_distance"];
//_gameType = [_this,0,objNull,[objNull]] call BIS_fnc_param;

/* 240 setOvercast 1;
360 setRain 1;
forceWeatherChange; */

_helicopter = call it_fnc_setupHelicopter;
//[_helicopter] call it_fnc_setupPassengers;
_town = [_helicopter] call it_fnc_setupWaypoints;
[_town] call it_fnc_setupTown;

//hint format["%1,%2", _helicopter, _town];

//if( isNil _helicopter) exitWith {};

[_helicopter, _town] spawn {
	
	_helicopter = _this select 0;
	_town = _this select 1;
	//hint str _this;
	//hint format["%1,%2", _helicopter, _town];
	
	_distance = _helicopter distance _town;
	
	while {_distance > 700} do
	{
		_distance = _helicopter distance _town;
		//hint str _distance;
		sleep 1;
	};
	
	[_helicopter] spawn it_fnc_actionCrash;
	[_town] call it_fnc_setupZone;
}
