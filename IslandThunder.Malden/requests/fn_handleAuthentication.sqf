
private ["_uid", "_clientid", "_response", "_auth_token"];

_uid = getPlayerUID player;

_uid_string = format["uid=%1", _uid];

_cliendid = [
    "http://192.168.0.102:8000/api/auth",
    "GET",
    [_uid_string],
    true
] call a3uf_common_fnc_addClient;

[
    _cliendid,
    ["Content-Type: application/json"]
] call a3uf_common_fnc_setClientHeaders;

_response = [
    _cliendid
] call a3uf_common_fnc_clientRequest;

_test = parseSimpleArray _response;
_next = _test select 1;
_u = _next select 0;
_auth_token = _u select 1;

diag_log "AUTH TOKEN";
diag_log _auth_token;

// let server check the current player authentication
[_auth_token, _uid] remoteExecCall ["it_fnc_checkAuthentication", 2];
