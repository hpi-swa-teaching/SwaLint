method tests
usedForeignVars: aSLMethodTestObject
	
	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		((aSLMethodTestObject resultOf: #usedVars) itemsReject: 
			[:v | (aSLMethodTestObject resultOf: #usedInstVars) items includes: v])