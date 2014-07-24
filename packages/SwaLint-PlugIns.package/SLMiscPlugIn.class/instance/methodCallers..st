method tests
methodCallers: aSLMethodTestObject

	| methods |
	
	aSLMethodTestObject shouldBeMethod.
	
	methods := aSLMethodTestObject testSystem allMethods.
	^ self collectionResult: methods select: [ :each | each testObject messages includes: aSLMethodTestObject methodSelector ]