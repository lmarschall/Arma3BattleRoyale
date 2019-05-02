[] spawn { 

	_count = 60;
	_inZone = true;
	_oldinZone = true;
	/* 0 setOvercast 0;
	0 setRain 0;
	0 setLightnings 0; */
	//hint "Trigger Off";
	//forceWeatherChange;

	while {_count > 0} do
	{
		_alive = alive player;
		if(!_alive) exitWith {};
		
		_distance = (position player) distance zonePosition;
		
		// Check if Player is in Zone
		if(_distance > zoneRadius) then 
		{
			_inZone = false;
			_count = _count -1;
		} else {
			_inZone = true;
			_count = 60;
		};
		
		// Change Weather if Player is in Zone
		if(!(_oldinZone isEqualTo _inZone)) then
		{
			if(_inZone) then
			{
				/* 0 setOvercast 0;
				0 setRain 0;
				0 setLightnings 0; */
				hint "Trigger Off";
				//forceWeatherChange;
			} else {
				/* 0 setOvercast 1;
				0 setRain 1;
				0 setLightnings 1; */
				hint "Trigger On";
				//forceWeatherChange;
			};
		};
		_oldinZone = _inZone;
		
		//hint format["%1", _distance];
		
		sleep 1;
	};

	if(_count == 0) then {
		hint "Punishment incoming!";
		"ModuleLightning_F" createUnit [position player, group player];
		sleep 1;
		player setDammage 1;
	};
};
	