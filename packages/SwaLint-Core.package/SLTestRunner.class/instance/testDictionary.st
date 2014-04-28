accessing
testDictionary
	
	^ testDictionary ifNil: [self initializeTestDictionary]