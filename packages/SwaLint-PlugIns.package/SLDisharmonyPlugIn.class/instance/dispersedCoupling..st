tests
dispersedCoupling: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #dispersedCoupling.
	aSLMethodTestObject shouldBeMethod.	
	^ self successResult: 
		((self looksLikeDispersedCoupling: aSLMethodTestObject) and:
		[(aSLMethodTestObject resultOf: #maxNesting) > #one])