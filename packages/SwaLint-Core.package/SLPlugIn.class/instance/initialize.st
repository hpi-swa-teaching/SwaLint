initialize-release
initialize

	super initialize.
	self preferenceDict: Dictionary new.
	self loadPreferences.