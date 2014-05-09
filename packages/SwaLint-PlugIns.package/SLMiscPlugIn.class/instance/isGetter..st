method tests
isGetter: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsGetter: aSLMethodTestObject testObject)