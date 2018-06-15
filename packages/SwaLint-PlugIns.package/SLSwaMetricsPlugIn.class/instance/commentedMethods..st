tests
commentedMethods: aSLClassTestObject

	<slTestName: 'Methods with comments'
	description: 'This test finds all methods, which contain a comment.'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasComment:
		satisfying: [:result | result isPositive]
