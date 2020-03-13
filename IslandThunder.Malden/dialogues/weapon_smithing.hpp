#include "defines.hpp"

class Weapon_Smithing {

    idd = WEAPON_SMITHING_DIALOG;
    name= "Weapon_Smithing";
    movingEnable = 1;
    enableSimulation = 1;

	class controlsBackground {
		class BAKAFOIAFF: RscText {
            x = 0.0865625 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = 0.242812 * safezoneW;
			h = 0.756 * safezoneH;
        };

		class RscText_1000: RscText
		{
			text = "Weapon Smithing"; //--- ToDo: Localize;
			x = 0.0996875 * safezoneW + safezoneX;
			y = 0.136 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.084 * safezoneH;
		};
	};

	class controls {

		class RscListbox_1501: RscCombo
		{
			idc = WEAPON_SMITHING_FILTER;
			onLBSelChanged  = "_this call it_fnc_workbenchFilter";
			x = 0.096275 * safezoneW + safezoneX;
			y = 0.24492 * safezoneH + safezoneY;
			w = 0.216562 * safezoneW;
			h = 0.042 * safezoneH;
		};
		class RscListbox_1500: RscListbox
		{
			idc = WEAPON_SMITHING_LIST;
			onLBSelChanged = "[_this] call it_fnc_workbenchChoose;";
			x = 0.0996875 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.42 * safezoneH;
		};
		class RscButtonMenu_2400: RscButtonMenu
		{
			idc = WEAPON_SMITHING_BUTTON;
			text = "Build";
			x = 0.0996875 * safezoneW + safezoneX;
			y = 0.766 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.056 * safezoneH;
		};
		class RscSlider_1900: RscProgress
		{
			idc = WEAPON_SMITHING_PROGRESS;
			x = 0.81875 * safezoneW + safezoneX;
			y = 0.806 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.085 * safezoneH;
		};
	};
};
