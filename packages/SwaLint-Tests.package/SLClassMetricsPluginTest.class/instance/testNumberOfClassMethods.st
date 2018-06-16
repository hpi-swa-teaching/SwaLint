testing
testNumberOfClassMethods

	self 
		test: #numberOfClassMethods:
		on: {SLDummyClass0. SLDummyClass02}
		expectedResults: {2. 0}.
