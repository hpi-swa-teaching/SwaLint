tests
brainMethod: aSLMethodTestObject

	<slTestName: 'Brain method' 
	description: 'Brain Methods centralize the functionality of a class. They are overlong methods, which are harder to understand and debug, and practically impossible to reuse'>

	aSLMethodTestObject ifClassTestChildrenWith: #brainMethod:.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self isExcessivelyLarge: aSLMethodTestObject) and:
		[self looksLikeBrainMethod: aSLMethodTestObject])
