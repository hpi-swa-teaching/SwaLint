testing
testNumberOfMethods

	self 
		test: #numberOfMethods:
		on: {SLDummyClass0. SLDummyClass01. SLDummyClass02. SLDummyClass021}
		expectedResults: {6. 0. 2. 1}.
