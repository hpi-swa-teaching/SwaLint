method tests
isSetter: aSLMethodTestObject

	<slTestName: nil 
	description: 'Method only sets a variable'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsSetter: aSLMethodTestObject)