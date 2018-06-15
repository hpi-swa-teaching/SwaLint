tests
methodFDP: aSLMethodTestObject

	<slTestName: 'Foreign Data Providers [FDP]'
	description: nil>
	
	| allVars |
	
	allVars := (aSLMethodTestObject resultOf: #usedVars:) items.
	^ self fewManyResult: ((allVars collect: [ :v | v parent ]) asSet size)