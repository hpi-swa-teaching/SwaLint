tests
methodATFD: aSLMethodTestObject

	<slTestName: 'Access To Foreign Data [ATFD]'
	description: 'ATFD: Access To Foreign Data. To measure how many foreign attributes the method is using.'>

	| foreignVars |
	
	foreignVars := (aSLMethodTestObject resultOf: #usedForeignVars:) itemCount.
	^ self fewManyResult: foreignVars