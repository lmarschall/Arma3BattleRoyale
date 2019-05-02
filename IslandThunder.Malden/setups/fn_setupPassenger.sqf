// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_passenger", "_weapon", "_weapons", "_magazine", "_magazines"];

_passenger = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _passenger) exitWith {};

_magazines = call it_fnc_configMagazines;
_weapons = call it_fnc_configWeapons;

_weapon = selectRandom _weapons;
_magazine = _magazines select (_weapons find _weapon);

_passenger linkItem "ItemGPS";
_passenger addItem "FirstAidKit";

_passenger addMagazine _magazine;
_passenger addWeapon _weapon;
_passenger addBackpack "B_Parachute";

/* _stripDown = {

	_passenger = _this select 0;
	
	// Strip down Passenger
	removeAllWeapons _passenger;
	{_passenger removeMagazine _x;} forEach (magazines _passenger);
	removeUniform _passenger;
	removeVest _passenger;
	removeBackpack _passenger;
	removeGoggles _passenger;
	removeHeadGear _passenger;
};

[_passenger, _stripDown] spawn {

	_passenger = _this select 0;
	_stripDown = _this select 1;
	
	//_handle = [_passenger] spawn _stripDown;
	//waitUntil {scriptDone _handle};
	
	_magazines = call it_fnc_configMagazines;
	_weapons = call it_fnc_configWeapons;

	_weapon = selectRandom _weapons;
	_magazine = _magazines select (_weapons find _weapon);

	_passenger linkItem "ItemGPS";
	_passenger addItem "FirstAidKit";

	_passenger addMagazine _magazine;
	_passenger addWeapon _weapon;
	_passenger addBackpack "B_I_Parachute_02_F";
} */