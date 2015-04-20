accessing
testDataFor: aTestOrSymbol

	^ self
		testDataFor: aTestOrSymbol 
		ifPresent: [:testData | testData]
		ifAbsent: [self testNotFound]