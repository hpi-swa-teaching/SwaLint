running
runOnTests: aTestsCollection andTestSystem: aSLTestSystem
	"Run tests on testObjects and answer the testObjects. 
	This method may be used for debugging or plugin testing.
	SwaLint calls TestRunner >> onEnvironment instead"
	
	self 
		selectedTests: aTestsCollection;
		testSystem: aSLTestSystem;
		run.
	
	^ aSLTestSystem