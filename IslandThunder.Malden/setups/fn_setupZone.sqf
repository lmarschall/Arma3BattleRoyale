// call it_fnc_setupPassengers;
//params ["_unit", "_target"];
//_unit doWatch _target;

private ["_town", "_townHouses"];
_town = [_this,0,[],[[]]] call BIS_fnc_param;

//hint "Delete All Markers";
_markers = allMapMarkers;

{
	deleteMarker _x;
}forEach _markers;

// Initial Zone Radius
_radius = 500;

// Define Globals for Global Use
zoneRadius = _radius;
zonePosition = _town;

// Create Zone Marker Function
_createZoneMarker = {

	_position = _this select 0;
	_size = _this select 1;
	_marker = _this select 2;
	_name = _this select 3;
	
	//hint str _marker;
	if (!(_marker == "")) then
	{
		_marker setMarkerColor "ColorRed";
		_marker setMarkerAlpha 0.5;
		//deleteMarker _marker;
	};
	_marker = createMarker [_name,_position];
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerColor "ColorBlack";
	_marker setMarkerType "ellipse";
	_marker setMarkerBrush "Solid";
	_marker setMarkerSize [_size,_size];
	//hint str _marker;
	// Order all to get in Zone
	{
		_x commandMove _position;
	} forEach playableUnits;
	
	_marker
};

_setNewPosition = {
	
	_radius = zoneRadius;
	_position = zonePosition;
	
	_radius = _radius / 2;
	_randomDgr = random 360;
	//hint str _randomDgr;
	_xPos = cos _randomDgr;
	_yPos = sin _randomDgr;
	_vector = [(_xPos) * _radius,(_yPos) * _radius,0];
	
	_position = _position vectorAdd _vector;
	
	zoneRadius = _radius;
	zonePosition = _position;
};

[_createZoneMarker, _setNewPosition] spawn {

	_createZoneMarker = _this select 0;
	_setNewPosition = _this select 1;
	
	_zoneMarker = "";

	// Create Initial Zone on Map
	hint "Create Initial Zone on Map";
	_zoneMarker = [zonePosition, zoneRadius, _zoneMarker, "One"] call _createZoneMarker;

	// Wait 1 Minutes
	sleep (60*2);
	
	// Get new Position
	call _setNewPosition;
	//hint "Get New Position.";
	
	// Create New Zone on Map
	hint "Create New Zone on Map";
	_zoneMarker = [zonePosition, zoneRadius, _zoneMarker, "Two"] call _createZoneMarker;
	["Warning",["The Eye of the Storm has moved!","The Eye of the Storm has moved!"]] call BIS_fnc_showNotification;
	
	_playerList = playableUnits;
	remoteExec ["it_fnc_checkPlayer", _playerList];
	
	{	
		_unit = _x;
	
		if(!(isPlayer _unit)) then 
		{
			[_unit] call it_fnc_checkPassenger;
		};
	
	} forEach playableUnits;
	
	// Wait X Minutes
	sleep (60*2);
	
	//hint "Get New Position.";
	// Get new Position
	call _setNewPosition;
	
	hint "Create New Zone on Map";
	// Create New Zone on Map
	_zoneMarker = [zonePosition, zoneRadius, _zoneMarker, "Three"] call _createZoneMarker;
	//_zoneTrigger = [_newPosition, _radius, _zoneTrigger] call _createZoneTrigger;
	["Warning",["The Eye of the Storm has moved!"]] call BIS_fnc_showNotification;
	
	// Wait X Minutes
	sleep (60*2);
	
	//hint "Get New Position.";
	// Get new Position
	call _setNewPosition;
	
	hint "Create New Zone on Map";
	// Create New Zone on Map
	_zoneMarker = [zonePosition, zoneRadius, _zoneMarker, "Four"] call _createZoneMarker;
	//_zoneTrigger = [_newPosition, _radius, _zoneTrigger] call _createZoneTrigger;
	["Warning",["The Eye of the Storm has moved!"]] call BIS_fnc_showNotification;
	
	//hint "Create New Trigger Zone";
	// Update Trigger Area
    

	//hint "Delete All Markers";
	/* _markers = allMapMarkers;

	{
		deleteMarker _x;
	}forEach _markers; */
};