#include "defines.hpp"

params [
    "", //Control
    ["_selection", 0, [0]]
];

_filter = _selection;

_display = findDisplay WEAPON_SMITHING_DIALOG;

_list = _display displayCtrl WEAPON_SMITHING_LIST;

lbClear _list;

_typeName = primaryWeapon player;

// hint str _filter;

_compatibleItems = [];

switch (_filter) do {
	// muzzles
    case 0: {
		_compatibleItems = getArray (configFile >> "CfgWeapons" >> _typeName >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleitems");
		holder_filter = "muzzles";

	};
	// flashlights
	case 1: {
		_compatibleItems = getArray (configFile >> "CfgWeapons" >> _typeName >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleitems");
		holder_filter = "flashlights";
	};
	// optics
	case 2: {
		_compatibleItems = getArray (configFile >> "CfgWeapons" >> _typeName >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleitems");
		holder_filter = "optics";
	};
	// bipods
	case 3: {
		_compatibleItems = getArray (configFile >> "CfgWeapons" >> _typeName >> "WeaponSlotsInfo" >> "UnderBarrelSlot" >> "compatibleitems");
		holder_filter = "bipods";
	};
	default {
		hint "default selection";
	};
};

{
	_class = _x;
	_name = getText(configFile >> "CfgWeapons" >> _class >> "displayName");
	_image = getText(configFile >> "CfgWeapons" >> _class >> "picture");

   	_list lbAdd _name;
	_list lbSetData [(lbSize _list) - 1, _class];
	_list lbSetPicture [(lbSize _list) - 1, _image];
}
forEach _compatibleItems;