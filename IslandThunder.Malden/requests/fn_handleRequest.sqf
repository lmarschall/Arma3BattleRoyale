_cliendid = ["http://192.168.0.102:8000/api/user", "GET", [], true] call a3uf_common_fnc_addClient;

_auth_string = format ["Authorization: Bearer %1", access_token];

[_cliendid, ["Content-Type: application/json", _auth_string]] call a3uf_common_fnc_setClientHeaders;

_response = [_cliendid] call a3uf_common_fnc_clientRequest;


diag_log "REQUEST";
diag_log _auth_string ;
diag_log _response;

