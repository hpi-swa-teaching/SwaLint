method tests
methodCallers: aSLMethodTestObject

	<slTestName: nil
	description: 'Collection of all callers of a method'>

	| methods |
	
	aSLMethodTestObject shouldBeMethod.
	
	methods := aSLMethodTestObject testSystem allMethods.
	^ self collectionResult: methods
			select: [ :each | each testObject messages
											includes: aSLMethodTestObject methodSelector ]