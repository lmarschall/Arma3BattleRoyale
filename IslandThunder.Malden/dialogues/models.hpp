class MyDrink
{
 
	idd = -1;
	movingEnable = 0;
	enableSimulation = 1;
 
	class Objects
	{
 
		class Can
		{
 
			onObjectMoved = "systemChat str _this";
 
			idc = -1; 
			type = 82;
			// model = "\A3\Structures_F\Items\Food\Can_V3_F.p3d";
			model = "\A3\Weapons_F_Exp\Rifles\AK12\AK12_F.p3d";
			//model = "\A3\weapons_f\acc\accv_Flashlight_F";
			scale = 1;
 
			direction[] = {0, -0.35, -0.65};
			up[] = {0, 0.65, -0.35}; 
 
			//position[] = {0,0,0.2}; optional
 
			x = 0.5;
			y = 0.5;
			z = 0.2;
 
			//positionBack[] = {0,0,1.2}; optional
 
			xBack = 0.5;
			yBack = 0.5;
			zBack = 1.2;
 
			inBack = 1;
			enableZoom = 1;
			zoomDuration = 0.001;
		};
	};
};