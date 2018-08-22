method tests
usedForeignVars: aSLMethodTestObject

	<slTestName: nil
	description: 'Collection of all foreign vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		((aSLMethodTestObject resultOf: #usedVars:) itemsReject: 
			[ :v | (aSLMethodTestObject resultOf: #usedInstVars:) items includes: v ])