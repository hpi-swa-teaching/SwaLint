initialize-release
initialize

	super initialize.
	
	self initializeWithSystemOrganizer: SystemOrganizer default.
	accepted := false.