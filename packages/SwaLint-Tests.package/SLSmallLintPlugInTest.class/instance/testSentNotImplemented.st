tests
testSentNotImplemented
	
	self 
		test: #smallLintSentNotImplemented
		on: {SLTestSentNotImplemented01 . SLDummyClass0 . SLDummyClass02}
		expectedResults: {1 . 0 . 0}.