_vector = [_this,0,[],[[]]] call BIS_fnc_param;
_angle = [_this,1,0,[0]] call BIS_fnc_param;

_x1 = _vector select 0;
_y1 = _vector select 1;
_z1 = _vector select 2;

_x2 = (_x1 * (cos _angle)) + (_y1 * (sin _angle));
_y2 = (_x1 * -1) * (sin _angle) + (_y1 * (cos _angle));
_z2 = _z1;

_xVector = [_x2,_y2,_z2];

_xVector;