tests
isAddedService: aSLMethodTestObject

	^ self booleanResult: (
		aSLMethodTestObject parent testObject superclass allSelectors includes:
			aSLMethodTestObject methodSelector) not