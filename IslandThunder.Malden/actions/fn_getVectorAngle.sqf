_vector1 = [_this,0,[],[[]]] call BIS_fnc_param;
_vector2 = [_this,1,[],[[]]] call BIS_fnc_param;

_cosinus = _vector1 vectorCos _vector2;
_angle = acos _cosinus;

_angle;