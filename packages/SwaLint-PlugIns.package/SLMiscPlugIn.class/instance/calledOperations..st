method tests
calledOperations: aSLMethodTestObject

	<slTestName: nil
	description: nil>

	| messages |
	aSLMethodTestObject shouldBeMethod.
	messages := aSLMethodTestObject testObject messages.
	^ self collectionResult: messages select: [ :each |
			aSLMethodTestObject testObject literals includes: each]