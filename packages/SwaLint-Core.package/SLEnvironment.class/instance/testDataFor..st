SwaLint
testDataFor: aTestSymbol

	^ self testDict
		at: aTestSymbol 
		ifAbsent: [self error: 'Test not found: ', aTestSymbol]