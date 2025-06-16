//#include "z\ArmaServerFPSMenu\addons\fpsmenu\ui_f\defineDIKCodes.inc"
#define DIK_SEMICOLON 0x27

SevFPS_var_showServerFPS = false;

["Arma Server FPS Menu", "ToggleServerFPSDisplay", ["Toggle Server FPS Display", "Show/hide server FPS counter (admin or on list only)"], {
    [] call SevFPS_fnc_toggleServerFPS
}, {
    //[] call SevFPS_fnc_toggleServerFPS
}, [DIK_SEMICOLON, [false, false, false]]] call CBA_fnc_addKeybind;
