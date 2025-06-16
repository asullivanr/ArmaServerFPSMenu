class CfgPatches {
    class SevFPS_functions {
        author = "Akira";
        name = "Arma Server FPS Menu";
        requiredAddons[] = {
            "cba_main"
        };
        weapons[] = {};
        units[] = {};
    };
};
class RscTitles {
    class SevFPS_RscServerFPS {
        idd = -1;
        duration = 1e10;
        movingEnable = 0;
        onLoad = "uiNamespace setVariable ['SevFPS_RscServerFPS_display', _this select 0]";
        onUnload = "uiNamespace setVariable ['SevFPS_RscServerFPS_display', displayNull]";
        fadein = 0;
        fadeout = 0;

        class controls {
            class ServerFPS_Text {
                idc = 1000;
                type = 13;
                style = 0;
                x = safeZoneX + 0.01;
                y = safeZoneY + 0.01;
                w = 0.25;
                h = 0.08;
                size = 0.035;
                colorBackground[] = {0,0,0,0.3};
                colorText[] = {1,1,1,1};
                font = "PuristaMedium";
                text = "";
            };
        };
    };
};
class CfgFunctions {
    class SevFPS_functions {
    	tag = "SevFPS";
        class serverFPS {
            file = "z\ArmaServerFPSMenu\addons\fpsmenu\functions";
            class isAuthorizedPlayer {};
            class toggleServerFPS {};
        };
    };
};
class Extended_PostInit_EventHandlers {
    class SevFPS_ServerFPSDisplay {
        init = "call compile preprocessFileLineNumbers 'z\ArmaServerFPSMenu\addons\fpsmenu\XEH_postInit.sqf'";
    };
};