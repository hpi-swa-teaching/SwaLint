tests
methodFDP: aSLMethodTestObject

	<slTestName: 'Foreign Data Providers [FDP]'
	description: 'FDP: Foreign Data Providers. To measure the number of classes that the foreign attributes belong to'>
	
	| allVars |
	
	allVars := (aSLMethodTestObject resultOf: #usedVars:) items.
	^ self fewManyResult: ((allVars collect: [ :v | v parent ]) asSet size)