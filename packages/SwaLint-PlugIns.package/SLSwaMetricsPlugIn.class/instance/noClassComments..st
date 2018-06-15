tests
noClassComments: aSLClassTestObject

	<slTestName: 'Missing class comments'
	description: 'Classes should have comments to explain their purpose, collaborations with other classes, and optionally  provide examples of use'>

	| class |
	aSLClassTestObject shouldBeClass.
	class := aSLClassTestObject testObject.
	^ self failureResult: (class comment = 
			class instanceSide organization classComment)
