finalization
install

	self unload.
	(TheWorldMenu respondsTo: #unregisterOpenCommand:)
		ifTrue: [TheWorldMenu unregisterOpenCommand: self swaLint].
	TheWorldMenu registerOpenCommand: {self swaLint. {SwaLint. #open}}.
	self initializePreferences.
	self debugMode: self DebugMode.
	SLPreferences OrderByTests.
	self registerPlugIn: SLPlugIn.