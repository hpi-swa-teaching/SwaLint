tests
methodATFD: aSLMethodTestObject

	| foreignVars |
	
	foreignVars := (aSLMethodTestObject resultOf: #usedForeignVars) itemCount.
	^ self fewManyResult: foreignVars