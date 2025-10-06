tests
testContainsRule
	
	self 
		test: #smallLintContains
		on: {SLTestCollectionAddRemoveToExternalClass . SLDummyClass0  }
		expectedResults: {1 . 0}.

