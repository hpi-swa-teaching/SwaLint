testing
testCommentedMethods

	self 
		test: #commentedMethods:
		on: {SLAccessorTestClass . SLFixtureClassWMCHigh. SLDummyClass0 }
		expectedResults: {1. 2. 0}.