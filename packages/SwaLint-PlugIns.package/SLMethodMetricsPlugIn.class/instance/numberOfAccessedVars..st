tests
numberOfAccessedVars: aSLMethodTestObject

	<slTestName: 'Number of accessed variables [NOAV]'
	description: 'Number of accessed variables inside a method'>

	^ self fewManyResult:
		(aSLMethodTestObject resultOf: #usedVars:) itemCount