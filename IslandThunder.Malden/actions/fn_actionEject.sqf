_count = 10;
_trigger = _this select 0;

while {_count > 0} do
{
	_active = triggerActivated _trigger;
	if(_active isEqualTo false) exitWith {hint "Punishment denied!";};
	hint format["Punishment in %1 Seconds", _count];
	_count = _count -1;
	sleep 1;
};

if(_count == 0) then {
	hint "Punishment incoming!";
	sleep 1;
	player setDammage 1;
};
	