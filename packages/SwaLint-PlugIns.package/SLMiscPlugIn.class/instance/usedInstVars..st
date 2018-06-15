method tests
usedInstVars: aSLMethodTestObject

	<slTestName: nil 
	description: 'Collection of all inst vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectInstVarsOf: aSLMethodTestObject)