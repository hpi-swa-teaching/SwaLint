tests
commentedMethods: aSLClassTestObject

	<slTestName: 'Methods with comments'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasComment:
		satisfying: [:result | result isPositive]
