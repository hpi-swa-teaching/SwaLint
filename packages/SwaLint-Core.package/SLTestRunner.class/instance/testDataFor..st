accessing
testDataFor: aTestOrSymbol

	^ (aTestOrSymbol isSymbol) 
		ifTrue: [self testDictionary at: aTestOrSymbol ifAbsent: [self testNotFound]]
		ifFalse: [self testDataFor: aTestOrSymbol symbol]