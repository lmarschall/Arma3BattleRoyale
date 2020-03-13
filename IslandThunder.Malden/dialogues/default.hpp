
class RscText
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 0;
    idc = -1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {1,1,1,1};
    text = "";
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0.037;
    w = 0.3;
    style = 0;
    shadow = 1;
    colorShadow[] = {0,0,0,0.5};
    font = "RobotoCondensed";
    SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    linespacing = 1;
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
};

class RscProgress
{
	type = 8;
	style = 0;
	colorFrame[] = {0,0,0,1};
	colorBar[] = {1,1,1,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	w = 1;
	h = 0.03;
};

class ScrollBar
{
    color[] = {1,1,1,0.6};
    colorActive[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.3};
    thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
    arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    shadow = 0;
    scrollSpeed = 0.06;
    width = 0;
    height = 0;
    autoScrollEnabled = 0;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
};

/*
    INCLUDE INHERITED ENTRIES: true
    SHOW CLASSES ONLY: false
    CONFIG PATH: bin\config.bin/RscListBox
    SOURCE ADD-ON(S): A3_Ui_F
*/

class RscListBox
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 5;
    rowHeight = 0;
    colorText[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.25};
    colorScrollbar[] = {1,0,0,0};
    colorSelect[] = {0,0,0,1};
    colorSelect2[] = {0,0,0,1};
    colorSelectBackground[] = {0.95,0.95,0.95,1};
    colorSelectBackground2[] = {1,1,1,0.5};
    colorBackground[] = {0,0,0,0.3};
    soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
    arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
    arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
    colorPicture[] = {1,1,1,1};
    colorPictureSelected[] = {1,1,1,1};
    colorPictureDisabled[] = {1,1,1,0.25};
    colorPictureRight[] = {1,1,1,1};
    colorPictureRightSelected[] = {1,1,1,1};
    colorPictureRightDisabled[] = {1,1,1,0.25};
    colorTextRight[] = {1,1,1,1};
    colorSelectRight[] = {0,0,0,1};
    colorSelect2Right[] = {0,0,0,1};
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    class ListScrollBar
    {
        color[] = {1,1,1,1};
        autoScrollEnabled = 1;
        colorActive[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.3};
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        shadow = 0;
        scrollSpeed = 0.06;
        width = 0;
        height = 0;
        autoScrollSpeed = -1;
        autoScrollDelay = 5;
        autoScrollRewind = 0;
    };
    x = 0;
    y = 0;
    w = 0.3;
    h = 0.3;
    style = 16;
    font = "RobotoCondensed";
    sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    shadow = 0;
    colorShadow[] = {0,0,0,0.5};
    period = 1.2;
    maxHistoryDelay = 1;
};

class RscCombo
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 4;
    colorSelect[] = {0,0,0,1};
    colorText[] = {1,1,1,1};
    colorBackground[] = {0,0,0,1};
    colorScrollbar[] = {1,0,0,1};
    colorDisabled[] = {1,1,1,0.25};
    colorPicture[] = {1,1,1,1};
    colorPictureSelected[] = {1,1,1,1};
    colorPictureDisabled[] = {1,1,1,0.25};
    colorPictureRight[] = {1,1,1,1};
    colorPictureRightSelected[] = {1,1,1,1};
    colorPictureRightDisabled[] = {1,1,1,0.25};
    colorTextRight[] = {1,1,1,1};
    colorSelectRight[] = {0,0,0,1};
    colorSelect2Right[] = {0,0,0,1};
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
    soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1};
    soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1};
    maxHistoryDelay = 1;
    class ComboScrollBar: ScrollBar
    {
        color[] = {1,1,1,1};
    };
    style = "0x10 + 0x200";
    font = "RobotoCondensed";
    sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.12;
    h = 0.035;
    colorSelectBackground[] = {1,1,1,0.7};
    arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
    arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
    wholeHeight = 0.45;
    colorActive[] = {1,0,0,1};
};

class RscButtonMenu
{
    idc = -1;
    type = 16;
    style = "0x02 + 0xC0";
    default = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.095589;
    h = 0.039216;
    animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
    animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
    animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
    colorBackground[] = {0,0,0,0.8};
    colorBackgroundFocused[] = {1,1,1,1};
    colorBackground2[] = {0.75,0.75,0.75,1};
    color[] = {1,1,1,1};
    colorFocused[] = {0,0,0,1};
    color2[] = {0,0,0,1};
    colorText[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.25};
    textSecondary = "";
    colorSecondary[] = {1,1,1,1};
    colorFocusedSecondary[] = {0,0,0,1};
    color2Secondary[] = {0,0,0,1};
    colorDisabledSecondary[] = {1,1,1,0.25};
    sizeExSecondary = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    fontSecondary = "PuristaLight";
    period = 1.2;
    periodFocus = 1.2;
    periodOver = 1.2;
    size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
    tooltipColorText[] = {1,1,1,1};
    tooltipColorBox[] = {1,1,1,1};
    tooltipColorShade[] = {0,0,0,0.65};
    class TextPos
    {
        left = "0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
        top = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - 		(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
        right = 0.005;
        bottom = 0;
    };
    class Attributes
    {
        font = "PuristaLight";
        color = "#E5E5E5";
        align = "left";
        shadow = "false";
    };
    class ShortcutPos
    {
        left = "5.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
        top = 0;
        w = "1 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
        h = "1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
    };
    soundEnter[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
    deletable = 0;
    fade = 0;
    class HitZone
    {
        left = 0;
        top = 0;
        right = 0;
        bottom = 0;
    };
    shortcuts[] = {};
    textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
    font = "RobotoCondensed";
    text = "";
    url = "";
    action = "";
    class AttributesImage
    {
        font = "RobotoCondensed";
        color = "#E5E5E5";
        align = "left";
    };
};