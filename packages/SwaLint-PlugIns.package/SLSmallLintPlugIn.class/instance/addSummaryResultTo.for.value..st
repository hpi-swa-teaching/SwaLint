smalllint
addSummaryResultTo: aTestObject for: aTest value: aNumber

	aTestObject 
		addResult: (SLSummaryResult newWithValue: aNumber)
		for: aTest.