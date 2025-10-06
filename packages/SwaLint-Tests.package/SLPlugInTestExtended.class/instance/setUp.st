running
setUp
	
	| testDictionary |
	
	plugIn := self plugInClass new.
	
	testDictionary := (Dictionary new).
	testRunner := SLTestRunner new 
		testEnvironment: self class dummyEnvironment copy;
		testDictionary: testDictionary.
	
	self resetTestSystem
	