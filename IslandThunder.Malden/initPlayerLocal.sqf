player addAction ["Join Game Queue", { [player] call it_fnc_actionAppend }];

player addAction ["Handle Request", { [] spawn it_fnc_handleRequest }];

// handle the authentication

[] spawn it_fnc_handleAuthentication;

