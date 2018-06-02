tests
shotgunSurgery: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #shotgunSurgery.
	aSLMethodTestObject shouldBeMethod.	
	
	^ self successResult: 
		((aSLMethodTestObject resultOf: #methodCM) > self class ShortMemoryCap and:
		[(aSLMethodTestObject resultOf: #methodCC) > #many])