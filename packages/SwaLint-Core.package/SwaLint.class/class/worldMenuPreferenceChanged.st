world menu
worldMenuPreferenceChanged

	self WorldMenuEntry 
		ifTrue: [self registerInWorldMenu]
		ifFalse: [self unregisterInWorldMenu].