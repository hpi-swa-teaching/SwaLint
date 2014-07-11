tests
intensiveCoupling: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #intensiveCoupling.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self looksLikeIntensiveCoupling: aSLMethodTestObject) and:
		[(aSLMethodTestObject resultOf: #maxNesting) > #one])