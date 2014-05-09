world menu
worldMenuPreferenceChanged

	SLPreferences WorldMenuEntry 
		ifTrue: [self registerInWorldMenu]
		ifFalse: [self unregisterInWorldMenu].