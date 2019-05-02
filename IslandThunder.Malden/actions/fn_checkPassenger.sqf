_passenger = [_this,0,objNull,[objNull]] call BIS_fnc_param;

[_passenger] spawn { 

	_passenger = _this select 0;
	_count = 60;
	_inZone = true;
	_oldinZone = true;

	while {_count > 0} do
	{
		_alive = alive _passenger;
		if(!_alive) exitWith {};
		
		_distance = (position _passenger) distance zonePosition;
		
		// Check if Player is in Zone
		if(_distance > zoneRadius) then 
		{
			_inZone = false;
			_count = _count -1;
		} else {
			_inZone = true;
			_count = 60;
		};
		
		// No Weather Changes for AI
/* 		// Change Weather if Player is in Zone
		if(!(_oldinZone isEqualTo _inZone)) then
		{
			if(_inZone) then
			{
				10 setOvercast 0;
				10 setRain 0;
				//forceWeatherChange;
			} else {
				10 setOvercast 1;
				10 setRain 1;
				//forceWeatherChange;
			};
		};
		_oldinZone = _inZone; */
		
		//hint format["%1", _count];
		
		sleep 1;
	};

	if(_count == 0) then {
		//hint "Punishment incoming!";
		"ModuleLightning_F" createUnit [position _passenger, group _passenger];
		sleep 1;
		_passenger setDammage 1;
	};
};
	