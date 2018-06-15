tests
methodATFD: aSLMethodTestObject

	<slTestName: 'Access To Foreign Data [ATFD]'
	description: nil>

	| foreignVars |
	
	foreignVars := (aSLMethodTestObject resultOf: #usedForeignVars:) itemCount.
	^ self fewManyResult: foreignVars