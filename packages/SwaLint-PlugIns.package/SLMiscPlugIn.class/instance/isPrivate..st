method tests
isPrivate: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsPrivate: aSLMethodTestObject testObject)