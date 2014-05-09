tests
brainMethod: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #brainMethod.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self isExcessivelyLarge: aSLMethodTestObject) and:
		[self looksLikeBrainMethod: aSLMethodTestObject])
