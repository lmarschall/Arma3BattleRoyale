_cliendid = [
    "http://192.168.0.102:8000/api/auth",
    "GET",
    ["uid=xyz"],
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

_token_string = format["token=%1", _auth_token];

_cliendid = [
    "http://192.168.0.102:8000/api/check",
    "GET",
    ["uid=xyz", _token_string],
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
access_token = _u select 1;

diag_log "ACCESS TOKEN";
diag_log access_token;
