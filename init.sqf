// this is run on startup

// Global Variables
US_VOA = 0; // can elevate all the way to 10
US_LOW_CT = ["Low Counter Attack", "Mid Counter Attack", "High Counter Attack"];

flagList= ["AgiaMarinaFlag", "CampRogainFlag"];
townsList = ["AgiaMarina", "CampRogain"];
_max = (count townsList)-1 ;

for "_i" from 0 to _max do {
	town = townsList select _i;
	town setMarkerColor "ColorEAST";
};

_max = (count flagList)-1 ;

for "_i" from 0 to _max do {
	flags = flagList select _i;
	(missionNamespace getVariable flags) setFlagTexture "flags\east.jpg";
};

null = [] execVM "CapturePoints\Towns\AgiaMarina.sqf";
null = [] execVM "CapturePoints\FOBs\CampRogain.sqf";

// "'AgiaMarina' setMarkerColor 'ColorWEST'; ['TaskSucceeded', ['', 'Agia Marina Captured']] call BIS_fnc_showNotification"

// startup notification (needs extra attention)
// ["TaskSucceeded", ["", "This game mode is based on the vietnam war"]] call BIS_fnc_showNotification;



 //"marker_0" setMarkerColor "ColorBlue";
 //["TaskSucceeded", ["", "Agia Marina Captured"]] call BIS_fnc_showNotification;
	  


//flagpole code
//flag1 addaction ["Capture Area",{Trigger_Con = true; publicVariable "Trigger_Con";}];
//Trigger_Con;

//trigger the trigger externally via a user input -> checks enemy presence
//trigger -> changes the colour of the marker in 10 seconds
        //-> deactivate if enemies are in the zone