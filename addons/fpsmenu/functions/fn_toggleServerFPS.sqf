if (!([] call SevFPS_fnc_isAuthorizedPlayer)) exitWith {
    hint "You must be a logged-in admin or on the allowed list to use this function.";
};

SevFPS_var_showServerFPS = !SevFPS_var_showServerFPS;

if (SevFPS_var_showServerFPS) then {
    "SevFPS_RscServerFPS" cutRsc ["SevFPS_RscServerFPS", "PLAIN"];

    [] spawn {
        while {SevFPS_var_showServerFPS} do {
            private _disp = uiNamespace getVariable ["SevFPS_RscServerFPS_display", displayNull];
            if (!isNull _disp) then {
                private _ctrl = _disp displayCtrl 1000;
                if (!isNull _ctrl) then {
                    private _fpsText = "N/A";
                    private _color = "#FFFFFF"; // fallback color

                    if (!isNil "serverFPS") then {
                        private _fps = serverFPS;
                        //_fpsText = str _fps;
                        _fpsText = str (round _fps); // rounded

                        _color = switch (true) do {
                            case (_fps > 35): { "#00FF00" };         // Green
                            case (_fps >= 30): { "#FFA500" };        // Orange
                            default { "#FF0000" };                   // Red
                        };
                    };

                    _ctrl ctrlSetStructuredText parseText format [
                        "<t align='left'>Server FPS: <t color='%2'>%1</t><br/>Updates every 10 seconds</t>",
                        _fpsText,
                        _color
                    ];
                };
            };
            sleep 10;
        };

        "SevFPS_RscServerFPS" cutText ["", "PLAIN"];
    };
} else {
    "SevFPS_RscServerFPS" cutText ["", "PLAIN"];
};
