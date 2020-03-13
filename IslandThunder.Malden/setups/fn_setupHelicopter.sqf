// call it_fnc_setupHelicopter;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_position","_className", "_helicopter"];
//_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;

// Get Position to Spawn Helicopter
//_position = [8066.08,10195.3,0.00144005];
_position = getMarkerPos ["marker_heli", true];
_className = "I_Heli_Transport_02_F";

// Spawn Helicopter
_helicopter = _className createVehicle _position;

// Init Helicopter
clearWeaponCargoGlobal _helicopter;
clearMagazineCargoGlobal _helicopter;
clearItemCargoGlobal _helicopter;
clearBackpackCargoGlobal _helicopter;

_helicopter allowDamage false;
_helicopter setVehicleLock "Locked";

//_helicopter addBackpackCargoGlobal ["B_I_Parachute_02_F",16];

createVehicleCrew _helicopter;

//_playerList = gameQueue;
_playerList = allPlayers;
remoteExec ["it_fnc_setupPlayer", _playerList];

{
	_unit = _x;
	
	if(!(isPlayer _unit)) then 
	{
		[_unit] call it_fnc_setupPassenger;
	};
	
	_unit moveInCargo _helicopter;

	
} forEach playableUnits;

//hint str _helicopter;

_helicopter