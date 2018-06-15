method tests
isGetter: aSLMethodTestObject

	<slTestName: nil 
	description: 'Method only returns a variable'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsGetter: aSLMethodTestObject testObject)