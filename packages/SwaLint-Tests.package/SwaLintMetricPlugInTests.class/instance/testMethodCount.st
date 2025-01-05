tests
testMethodCount
		
	self
		test: #systemMethodCount:
		on: { {SLDummyClass01 . SLDummyClass02 . SLDummyClass03} }
		expectedResults: {5}.
