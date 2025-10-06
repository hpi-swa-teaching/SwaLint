tests
testClassCount
	
	self
		test: #classCount:
		on: { {SLDummyClass01 . SLDummyClass02} }
		expectedResults: {2}.