accessing
testDataFor: aTestSymbol

	^ self tests 
		at: aTestSymbol 
		ifAbsent: [self error: 'Test not found: ', aTestSymbol]