
// private ["_clientid"];

params [
    ["_access_token","",[""]]
];

// check if remote executed
if(!isRemoteExecuted) exitWith {};

access_token = _access_token;
