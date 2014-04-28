method tests
isSetter: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsSetter: aSLMethodTestObject)