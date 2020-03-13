
class Weapon_Smithing {

    idd = 2000;
    name= "Weapon_Smithing";
    movingEnable = 1;
    enableSimulation = 1;

	class controls {

		class RscListbox_1501: RscCombo
		{
			idc = 2001;
			onLBSelChanged  = "_this call it_fnc_workbenchFilter";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.245 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = 2002;
			onLBSelChanged = "[_this] call it_fnc_workbenchChoose;";
			x = 0.09625 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.23375 * safezoneW;
			h = 0.136 * safezoneH;
		};
		class RscSlider_1900: RscProgress
		{
			idc = 2003;
			x = 0.81875 * safezoneW + safezoneX;
			y = 0.806 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.085 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 2004;
			text = "TITLE"; //--- ToDo: Localize;
			x = 0.425625 * safezoneW + safezoneX;
			y = 0.109 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.085 * safezoneH;
		};
	};
};
