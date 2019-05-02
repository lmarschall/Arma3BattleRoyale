//execVM "CW_ACIM\ACIM_init.sqf";
// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_house"];
_house = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (isNull _house) exitWith {};

_houseType = typeOf _house;
_housePos = getPosATL _house;
_houseDir = vectorDir _house;
	
_angle = [[0,1,0],_houseDir] call it_fnc_getVectorAngle;

if((_houseDir select 0) < 0) then { 
	_angle = 360 - _angle;
};

_houseVar = [_houseType] call it_fnc_configHouses;

if (count _houseVar < 1) exitWith {};

_objects = _houseVar call BIS_fnc_selectRandom;

{
	_posVector = [(_x select 1), _angle] call it_fnc_shiftVector;
	_dirVector = [(_x select 2), _angle] call it_fnc_shiftVector;
	
	_objectPos = [(_housePos select 0) + (_posVector select 0),(_housePos select 1) + (_posVector select 1),(_housePos select 2) + (_posVector select 2)];
	//_objectDir = [(_houseDir select 0) + ((_x select 2) select 0),(_houseDir select 1) + ((_x select 2) select 1),(_houseDir select 2) + ((_x select 2) select 2)];
	
	_nObject = createVehicle [(_x select 0), _objectPos, [], 0, "CAN_COLLIDE"];	
	_nObject setVectorDir _dirVector;
} foreach _objects;