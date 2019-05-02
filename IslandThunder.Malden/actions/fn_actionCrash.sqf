// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_helicopter", "_town", "_distance"];
_helicopter = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _helicopter) exitWith {};

//The lighting
_position = position _helicopter;
_lighting = "lightning_F" createVehicle _position;
_lighting setPosASL [(_position select 0) - 10, (_position select 1) - 10, (_position select 2) + 150];

playSound "thunder_1"; 

//Some delay
sleep (1);

//Clean up
deletevehicle _lighting;

_helicopter allowDamage true;
//_helicopter setVehicleLock "Unlocked";
//_helicopter setHitPointDamage ["HitEngine", 1];
_helicopter setHitPointDamage ["HitHRotor", 1];
_helicopter setHitPointDamage ["HitVRotor", 1];

/* [_helicopter] spawn {
	
	_helicopter = _this select 0;

	while	{alive _helicopter} do {
	
		_alarm = createSoundSource ["Sound_Alarm2", position _helicopter, [], 0]; //starts alarm
		 //stops alarm
		//playSound3D ["A3\Sounds_F\sfx\alarmCar.wav", _helicopter];
		sleep 1;
		deleteVehicle _alarm;
	};
}; */

[_helicopter] spawn {
	sleep 5;
	{
		moveOut _x;
		//_x addWeapon "hgun_P07_F";
		//_x addMagazine "30Rnd_9x21_Mag";
		sleep 1;
	} forEach playableUnits;
};

/* {
	_x addRating -10000;
	_x allowDamage false;
	
} forEach allPlayers; */

