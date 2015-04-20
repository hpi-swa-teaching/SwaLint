accessing
testDataFor: aTestOrSymbol ifPresent: oneArgBlock ifAbsent: aBlock

	^ self testDictionary
		at: aTestOrSymbol asSymbol 
		ifPresent: oneArgBlock
		ifAbsent: aBlock