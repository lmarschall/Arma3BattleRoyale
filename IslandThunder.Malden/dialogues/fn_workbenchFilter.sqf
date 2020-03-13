params [
    "", //Control
    ["_selection", 0, [0]]
];

_filter = _selection;

_display = findDisplay 2000;

_list = _display displayCtrl 2002;

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
   	_list lbAdd str _class;
	_list lbSetData [(lbSize _list) - 1, _class];
}
forEach _compatibleItems;