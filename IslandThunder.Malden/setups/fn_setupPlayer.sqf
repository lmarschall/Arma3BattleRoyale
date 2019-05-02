// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_weapon", "_weapons", "_magazine", "_magazines"];

_stripDown = {
	
	// Strip down Player
	removeAllWeapons player;
	{player removeMagazine _x;} forEach (magazines player);
	removeUniform player;
	removeVest player;
	removeBackpack player;
	removeGoggles player;
	removeHeadGear player;
};

[_stripDown] spawn {

	_stripDown = _this select 0;

	//_handle = [] spawn _stripDown;
	//waitUntil {scriptDone _handle};
	
	_magazines = call it_fnc_configMagazines;
	_weapons = call it_fnc_configWeapons;

	// Select Random Weapon and Magazine
	_weapon = selectRandom _weapons;
	_magazine = _magazines select (_weapons find _weapon);

	player linkItem "ItemGPS";
	player addItem "FirstAidKit";
	player addRating -10000;
	player allowDamage false;

	player addMagazine _magazine;
	player addWeapon _weapon;
	player addBackpack "B_Parachute";
	
	0 setOvercast 0.1;
	0 setRain 1;
	0 setLightnings 1;
	forceWeatherChange;
}
