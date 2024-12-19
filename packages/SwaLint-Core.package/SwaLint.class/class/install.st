finalization
install

	self unload; initialize.
	self initializePreferences.
	self debugMode: self DebugMode.
	self registerPlugIn: SLPlugIn.