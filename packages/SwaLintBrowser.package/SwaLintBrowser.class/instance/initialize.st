initialize-release
initialize

	super initialize.
	
	caches := IdentityDictionary new.
	
	self shouldDisplayAllTests: self defaultShouldDisplayAllTests.