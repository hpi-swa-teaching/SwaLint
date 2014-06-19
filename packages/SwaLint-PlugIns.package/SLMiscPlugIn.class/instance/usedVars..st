method tests
usedVars: aSLMethodTestObject
	
	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectAllVarsOf: aSLMethodTestObject)