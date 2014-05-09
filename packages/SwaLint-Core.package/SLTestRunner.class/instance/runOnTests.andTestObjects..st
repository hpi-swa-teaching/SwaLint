running
runOnTests: aTestsOrSymbolCollection andTestObjects: aCollection
	"Run tests on testObjects and answer the testObjects. 
	This method may be used for debugging or plugin testing.
	SwaLint calls TestRunner >> runOnEnvironment instead"
	
	self
		runOnTests: (self testsFrom: aTestsOrSymbolCollection)  
		andTestSystem: (SLSystemTestObject 
			newFromTestObjects: aCollection).
	
	^ aCollection