
life_shop_cam = "CAMERA" camCreate getPos player; 
showCinemaBorder false; 
life_shop_cam cameraEffect ["Internal", "Back"]; 
life_shop_cam camSetTarget (player modelToWorld [0,0,1]); 
life_shop_cam camSetPos (player modelToWorld [1,4,2]); 
life_shop_cam camSetFOV .33; 
life_shop_cam camSetFocus [50, 0]; 
life_shop_cam camCommit 1;

life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;