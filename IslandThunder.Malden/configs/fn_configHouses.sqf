_houseType = [_this,0,"",[""]] call BIS_fnc_param;
_return = [];
switch(_houseType) do
{
	case "Land_i_Shop_02_V1_F":
	{
		_return = 
		[
			// First Variant
			[
				["Land_OfficeCabinet_01_F",[-1.07594,-0.528104,0.509583],[-0.998945,-0.0459309,-5.35149e-005]],
				["Land_OfficeCabinet_01_F",[-1.06395,0.416661,0.510047],[-0.999922,-0.0122329,0.00262077]]
			]
		];
	};
	case "Land_i_Shop_02_b_blue_F":
	{
		_return = 
		[
			// First Variant
			[
				["Land_OfficeCabinet_01_F",[-1.07594,-0.528104,0.509583],[-0.998945,-0.0459309,-5.35149e-005]],
				["Land_OfficeCabinet_01_F",[-1.06395,0.416661,0.510047],[-0.999922,-0.0122329,0.00262077]]
			]
		];
	};
	case "Land_i_Shop_02_V3_F":
	{
		_return = 
		[
			// First Variant
			[
				["Land_OfficeCabinet_01_F",[-1.07594,-0.528104,0.509583],[-0.998945,-0.0459309,-5.35149e-005]],
				["Land_OfficeCabinet_01_F",[-1.06395,0.416661,0.510047],[-0.999922,-0.0122329,0.00262077]]
			]
		];
	};
};
_return;


/*
[
				["Land_OfficeCabinet_01_F",[-1.18046,0.301058,0.510369],[1.04364,-0.935128,-0.000509581]],
				["Land_OfficeCabinet_01_F",[-1.21189,-0.588153,0.50955],[1.09722,-0.931233,-0.000535745]]
			]*/