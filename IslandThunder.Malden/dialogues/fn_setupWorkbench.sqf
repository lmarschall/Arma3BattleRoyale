
// ADD THE FOLLOWING COMMAND TO WORKBENCH OBJECT
// this addAction ["Open Workbench", { [_this select 0, _this select 1] call it_fnc_setupWorkbench }];

private ["_workbench"];
_workbench = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_player = [_this,1,objNull,[objNull]] call BIS_fnc_param;

// hide the weapon on the workbench
_workbench hideObject true;

// get players weapon and attachments
_weapon = primaryWeapon _player;
_items = primaryWeaponItems _player;
_muzzle = _items select 0;
_flashlight = _items select 1;
_optics = _items select 2;
_bipod = _items select 3;

hint str _items;

_direction = getDir _workbench;

// create empty weapon holder and fill with player weaopon
_holder = createVehicle ["Weapon_Empty", getPosATL _workbench, [], 0, "CAN_COLLIDE"];
_holder setDir _direction;
_holder addWeaponWithAttachmentsCargo [[_weapon, _muzzle, _flashlight, _optics, [], [], _bipod], 1];

_camtarget = getPosATL _holder;
_camposition = [_camtarget select 0, _camtarget select 1, (_camtarget select 2) + 3];

// creates camera view on top of the workbench
_cam = "CAMERA" camCreate _camposition;
showCinemaBorder false; 
_cam cameraEffect ["Internal", "Back"];
_cam camSetDir (_camposition vectorFromTo _camtarget);
_cam camSetFOV .33; 
_cam camSetFocus [50, 0]; 
_cam camCommit 0;

// create dialog
createDialog "Weapon_Smithing";
waitUntil {!isNull (findDisplay 2000)};

// find dialog control
_display = findDisplay 2000;
_progress = _display displayCtrl 2005;
_progress progressSetPosition 0.5;

// find linked items


// wait till display is terminated, then exit camera view, clear weapon holder and reset the workbench
waitUntil {isNull (findDisplay 2000)};
life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;
clearWeaponCargo _holder;
_workbench hideObject false;