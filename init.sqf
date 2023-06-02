// this is run on startup

// Global Variables
US_VOA = 0; // can elevate all the way to 10
US_LOW_CT = ["Low Counter Attack", "Mid Counter Attack", "High Counter Attack"];

townsList = ["AgiaMarina", "CampRogain"];
markLoc = townslist select 0;
_trigger = createTrigger ["EmptyDetector", getMarkerPos markLoc, true];
_trigger setVariable["AgiaMarinaTriggerBLU", _trigger];
_trigger setTriggerArea [150, 150, 0, false, 5];
_trigger setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trigger setTriggerStatements ["this", "'AgiaMarina' setMarkerColor 'ColorWEST'; ['TaskSucceeded', ['', 'Agia Marina Captured']] call BIS_fnc_showNotification", ""];

// To move

_max = (count townsList)-1 ;

for "_i" from 0 to _max do {
	town = townsList select _i;
	town setMarkerColor "ColorEAST";
};
// end


// startup notification (needs extra attention)
// ["TaskSucceeded", ["", "This game mode is based on the vietnam war"]] call BIS_fnc_showNotification; 