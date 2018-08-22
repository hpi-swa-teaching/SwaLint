initialize-release
initialize

	super initialize.
	self
		initializeInstanceVariables;
		addPlugIn: SLPlugIn;
		fetchSystemClasses;
		loadDefaults.