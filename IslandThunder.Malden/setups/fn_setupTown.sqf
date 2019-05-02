// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_town", "_townHouses"];
_town = [_this,0,[],[[]]] call BIS_fnc_param;

//if (isNull _helicopter) exitWith {};

hint str _town;

// Find all Buildings in Town
_townHouses = _town nearObjects ["House", 1000];

_houseArray = [
	"Land_i_Shop_02_V3_F", 
	"Land_i_Shop_02_b_blue_F",
	"Land_i_Shop_02_V1_F"
	];

copyToClipboard str _townHouses;
_count = 0;

{
	_house = _x;
	_houseType = typeOf _house;
	
	_findHouse = _houseArray find _houseType;
	if (_findHouse > -1) then {
		_count = _count +1;
	
		_houseMarker = createMarker [format["House%1",_count], position _house];
		_houseMarker setMarkerShape "ICON";
		_houseMarker setMarkerType "hd_dot";
		
		[_house] call it_fnc_setupHouse;
	}

} forEach _townHouses;