tests
noClassComments: aSLClassTestObject

	| class |
	aSLClassTestObject shouldBeClass.
	class := aSLClassTestObject testObject.
	^ self failureResult: (class comment = 
			class instanceSide organization classComment)
