testing
testCollectionMessagesToExternalObjectRule
	
	self 
		test: #smallLintCollectionMessagesToExternalObject
		on: {SLTestCollectionAddRemoveToExternalClass . SLDummyClass0  }
		expectedResults: {3 . 0 }.