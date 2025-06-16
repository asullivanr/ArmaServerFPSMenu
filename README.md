This mod will display a small menu in the top-left of the screen that will show the server FPS. The FPS is updated on the server in the initServer.sqf file mentioned below.

Instructions

Load the <a href="https://raw.githubusercontent.com/asullivanr/ArmaServerFPSMenu/refs/heads/main/initServer.sqf">initServer.sqf</a> file into your mission folder and change SevFPS_allowedUIDs to include a list of people allowed to access the menu, or change SevFPS_globalAllow to true to allow everyone to use the menu.

The mod is client side minus the initServer.sqf file contents that must go with your mission.sqm file. includes server keys for modpack use.

To access use the keybind ; or change the mod settings keybind to something else in the options menu.

From 35 fps and above the text color will be green.
From 30-35 it will be orange.
and anything below 30 will be red.

Built with <a href="https://github.com/BrettMayson/HEMTT">HEMTT</a> in mind.