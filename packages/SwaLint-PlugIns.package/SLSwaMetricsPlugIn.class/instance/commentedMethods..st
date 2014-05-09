tests
commentedMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasComment
		satisfying: [:result | result isPositive]
