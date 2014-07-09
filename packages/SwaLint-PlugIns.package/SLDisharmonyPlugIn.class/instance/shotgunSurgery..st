tests
shotgunSurgery: aSLMethodTestObject

	aSLMethodTestObject ifClassTestChildrenWith: #shotgunSurgery.
	aSLMethodTestObject shouldBeMethod.	
	
	^ self successResult: 
		(((aSLMethodTestObject resultOf: #methodCM) > 
			(SLPreferences preferenceAt: #ShortMemoryCap) preferenceValue ) and:
				[(aSLMethodTestObject resultOf: #methodCC) > #many])