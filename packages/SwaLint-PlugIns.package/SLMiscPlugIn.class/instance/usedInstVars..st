method tests
usedInstVars: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectInstVarsOf: aSLMethodTestObject)