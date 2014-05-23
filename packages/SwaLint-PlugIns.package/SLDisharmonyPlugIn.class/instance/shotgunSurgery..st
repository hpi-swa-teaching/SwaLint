tests
shotgunSurgery: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #shotgunSurgery.
	aSLMethodTestObject shouldBeMethod.	
	
	^ self successResult: 
		(((aSLMethodTestObject resultOf: #methodCM) > (self preference: #ShortMemoryCap)) and:
		((aSLMethodTestObject resultOf: #methodCC) > #many))