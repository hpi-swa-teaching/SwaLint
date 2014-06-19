tests
methodFDP: aSLMethodTestObject
	
	| allVars |
	
	allVars := (aSLMethodTestObject resultOf: #usedVars) items.
	^ self fewManyResult: ((allVars collect: [:v | v parent]) asSet size)