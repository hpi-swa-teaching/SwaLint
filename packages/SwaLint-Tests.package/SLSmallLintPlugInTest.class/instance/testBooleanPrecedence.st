testing
testBooleanPrecedence
	
	self 
		test: #smallLintBooleanPrecedence
		on: {SLTestCollectionAddRemoveToExternalClass  . SLDummyClass0  }
		expectedResults: {1 . 0 }.