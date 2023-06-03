_FOB = "CampRogain";
_flag = "CampRogainFlag";

//initial town setup
_FOB setMarkerColor "ColorEAST";

// Add action to flag trigger
_trigger = createTrigger ["EmptyDetector", getMarkerPos _FOB, true];
_trigger setVariable ["CampRogainTriggerBLU", _trigger];
_trigger setTriggerArea [150, 150, 0, false, 5];
_trigger setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trigger setTriggerStatements ["this", "(missionNamespace getVariable 'CampRogainFlag') addaction ['Capture Area',{Trigger_Rogain = true; publicVariable 'Trigger_Rogain';}];", ""];

// trigger applies changes to marker and flag
_triggerChanges = createTrigger ["EmptyDetector", getMarkerPos _FOB, true];
_triggerChanges setVariable ["CampRogainFlagChange", _triggerChanges];
_triggerChanges setTriggerArea [0, 0, 0, false, 0];
_triggerChanges setTriggerActivation ["NONE", "NONE", true];
_triggerChanges setTriggerStatements ["Trigger_Rogain", "'CampRogain' setMarkerColor 'ColorWEST'; ['TaskSucceeded', ['', 'Camp Rogain Captured']] call BIS_fnc_showNotification; (missionNamespace getVariable 'CampRogainFlag') setFlagTexture 'flags\west.jpg'", ""];