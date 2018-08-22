method tests
isPrivate: aSLMethodTestObject

	<slTestName: 'Method is private' 
	description: 'Answers whether a method is private/protected or not.'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsPrivate: aSLMethodTestObject testObject)