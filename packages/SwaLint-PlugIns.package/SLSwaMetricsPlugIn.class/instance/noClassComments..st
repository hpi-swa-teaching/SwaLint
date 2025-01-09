tests
noClassComments: aSLClassTestObject

	<slTestName: 'Missing class comments'
	description: 'All classes should have a comment to explain their purpose, collaborations with other classes, and optionally provide examples of use.'>

	| class |
	aSLClassTestObject shouldBeClass.
	class := aSLClassTestObject testObject.
	^ (self booleanResult: class hasComment not)
		showOnlyIfTrue