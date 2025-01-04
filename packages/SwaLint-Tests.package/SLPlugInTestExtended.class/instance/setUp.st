running
setUp
	
	| testDictionary |
	
	plugIn := self plugInClass new.
	
	testDictionary := (Dictionary new).
	testRunner := SLTestRunner new 
		testEnvironment: (SLTestCase dummyEnvironment copy);
		testDictionary: testDictionary.
	
	self resetTestSystem
	