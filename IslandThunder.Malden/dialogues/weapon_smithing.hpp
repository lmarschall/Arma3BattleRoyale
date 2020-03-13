
class Weapon_Smithing {

    idd = 2000;
    name= "Weapon_Smithing";
    movingEnable = 1;
    enableSimulation = 1;

	class controls {

		class RscListbox_1501: RscListbox
		{
			idc = 2001;
			text = "1";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.245 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 2002;
			text = "2";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscListbox_1502: RscListbox
		{
			idc = 2003;
			text = "3";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.585 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscListbox_1503: RscListbox
		{
			idc = 2004;
			text = "4";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.755 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscSlider_1900: RscProgress
		{
			idc = 2005;
			text = "Slider";
			x = 0.81875 * safezoneW + safezoneX;
			y = 0.806 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.085 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 2006;
			text = "TITLE"; //--- ToDo: Localize;
			x = 0.425625 * safezoneW + safezoneX;
			y = 0.109 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.085 * safezoneH;
		};
	};
};
