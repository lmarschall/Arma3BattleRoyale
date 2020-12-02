
private ["_clientid", "_response", "_access_token", "_owner"];

params [
    ["_auth_token","",[""]],
    ["_uid","",[""]]
];

_owner = remoteExecutedOwner;

// check if remote executed
if(!isRemoteExecuted) exitWith {};

[_auth_token, _uid, _owner] spawn {


    _token_string = format["token=%1", _this select 0];
    _uid_string = format["uid=%1", _this select 1];

    _cliendid = [
        "http://192.168.0.102:8000/api/check",
        "GET",
        [_uid_string, _token_string],
        true
    ] call a3uf_common_fnc_addClient;

    // TODO: add authentication headers of server for api calls

    [
        _cliendid,
        ["Content-Type: application/json"]
    ] call a3uf_common_fnc_setClientHeaders;

    _response = [
        _cliendid
    ] call a3uf_common_fnc_clientRequest;

    diag_log "RESPONSE";
    diag_log _response;

    _test = parseSimpleArray _response;
    _next = _test select 1;
    _u = _next select 0;
    _access_token = _u select 1;

    diag_log "ACCESS TOKEN";
    diag_log _access_token;

    // return access token to player
    [_access_token] remoteExecCall ["it_fnc_saveAuthentication", _this select 2];
}
