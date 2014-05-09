tests
nilProgramming: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHandlesNil
		satisfying: [:result | result isPositive]
