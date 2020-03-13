#include "defines.hpp"

_control = (_this select 0) select 0;
_selection = (_this select 0) select 1;

_data = _control lbData _selection;

// hint str _data;

_weapon = primaryWeapon player;
_items = primaryWeaponItems player;
_muzzle = _items select 0;
_flashlight = _items select 1;
_optics = _items select 2;
_bipod = _items select 3;

switch (holder_filter) do {
	case "muzzles": {
		_muzzle = _data;
	};
	case "flashlights": {
		_flashlight = _data;
	};
	case "optics": {
		_optics = _data;
	};
	case "bipods": {
		_bipod = _data;
	};
	default {
		hint "default selection";
	};
};

clearWeaponCargo holder;
holder addWeaponWithAttachmentsCargo [[_weapon, _muzzle, _flashlight, _optics, [], [], _bipod], 1];