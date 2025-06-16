params [];

private _isAdmin = serverCommandAvailable "#ban";
private _uid = getPlayerUID player;
private _isWhitelisted = (!isNil "SevFPS_allowedUIDs") && {_uid in SevFPS_allowedUIDs}; // The value SevFPS_allowedUIDs is a mission value set on initserver.sqf

_isAdmin || _isWhitelisted || SevFPS_globalAllow
