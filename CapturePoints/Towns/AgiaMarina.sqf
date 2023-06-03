_town = "AgiaMarina";
_flag = "AgiaMarinaFlag";

//initial town setup
_town setMarkerColor "ColorEAST";

// Add action to flag trigger
_trigger = createTrigger ["EmptyDetector", getMarkerPos _town, true];
_trigger setVariable ["AgiaMarinaTriggerBLU", _trigger];
_trigger setTriggerArea [150, 150, 0, false, 5];
_trigger setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trigger setTriggerStatements ["this", "(missionNamespace getVariable 'AgiaMarinaFlag') addaction ['Capture Area',{Trigger_Agia = true; publicVariable 'Trigger_Agia';}];", ""];

// trigger applies changes to marker and flag
_triggerChanges = createTrigger ["EmptyDetector", getMarkerPos _town, true];
_triggerChanges setVariable ["AgiaMarinaFlagChange", _triggerChanges];
_triggerChanges setTriggerArea [0, 0, 0, false, 0];
_triggerChanges setTriggerActivation ["NONE", "NONE", true];
_triggerChanges setTriggerStatements ["Trigger_Agia", "'AgiaMarina' setMarkerColor 'ColorWEST'; ['TaskSucceeded', ['', 'Agia Marina Captured']] call BIS_fnc_showNotification; (missionNamespace getVariable 'AgiaMarinaFlag') setFlagTexture 'flags\west.jpg'", ""];