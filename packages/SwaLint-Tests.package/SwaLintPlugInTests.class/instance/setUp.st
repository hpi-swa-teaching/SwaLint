running
setUp
	
	|testDictionary|
	
	plugIn := self plugInClass new.
	
	testDictionary := (Dictionary new).	
	testRunner := (SLTestRunner new) testDictionary: testDictionary.
	
	self resetTestSystem
	