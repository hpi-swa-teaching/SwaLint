method tests
usedVars: aSLMethodTestObject

	<slTestName:  nil
	description: 'Collection of all vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectAllVarsOf: aSLMethodTestObject)