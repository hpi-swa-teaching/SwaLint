initialize-release
initialize

	self loadedPlugIns: Dictionary new.
	self runSpecificData: IdentityDictionary new.

	^ super initialize