tests
noClassComments: aSLClassTestObject

	<slTestName: 'Missing class comments'
	description: nil>

	| class |
	aSLClassTestObject shouldBeClass.
	class := aSLClassTestObject testObject.
	^ self failureResult: (class comment = 
			class instanceSide organization classComment)
