testing
testNumberOfProtectedMethods

	self 
		test: #numberOfProtectedMethods:
		on: {SLNProtMDummyClass0. SLNProtMDummyClass1. SLNProtMDummyClass2. SLNProtMDummyClass3}
		expectedResults: {0. 2. 2. 4}.
