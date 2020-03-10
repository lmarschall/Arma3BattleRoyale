
// ADD THE FOLLOWING COMMAND TO WORKBENCH OBJECT
// this addAction ["Open Workbench", { [_this select 0, _this select 1] call it_fnc_setupWorkbench }];

private ["_workbench"];
_workbench = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_player = [_this,1,objNull,[objNull]] call BIS_fnc_param;

_workbench hideObject true;

// TODO: get player weapon with items
_weapon = primaryWeapon _player;
_items = primaryWeaponItems _player;
_muzzle = _items select 0;
_flashlight = _items select 1;
_optics = _items select 2;
_bipod = _items select 3;

hint str _items;

_direction = getDir _workbench;

_holder = createVehicle ["Weapon_Empty", getPosATL _workbench, [], 0, "CAN_COLLIDE"];
_holder setDir _direction;
// holder addWeaponWithAttachmentsCargo [["arifle_MX_GL_F", "muzzle_snds_H", "", "optic_aco", ["30Rnd_65x39_caseless_mag", 15], ["3Rnd_HE_Grenade_shell", 2], ""], 1];
_holder addWeaponWithAttachmentsCargo [[_weapon, _muzzle, _flashlight, _optics, [], [], _bipod], 1];

_camtarget = getPosATL _holder;
_camposition = [_camtarget select 0, _camtarget select 1, (_camtarget select 2) + 3];

// TODO setup workbench cam
life_shop_cam = "CAMERA" camCreate _camposition;
showCinemaBorder false; 
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetDir (_camposition vectorFromTo _camtarget);
// life_shop_cam camSetTarget _holder;
// life_shop_cam camSetRelPos [0,0,2];
// life_shop_cam camSetPos _camposition;
life_shop_cam camSetFOV .33; 
life_shop_cam camSetFocus [50, 0]; 
life_shop_cam camCommit 0;

// life_shop_cam cameraEffect ["TERMINATE","BACK"];
// camDestroy life_shop_cam;

// clearWeaponCargo holder;
// holder setPosATL _position;
// _holder = "WeaponHolderSimulated" createVehicleLocal _position;