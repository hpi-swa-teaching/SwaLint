tests
nilProgramming: aSLClassTestObject

	<slTestName: 'Handling of nil-values'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHandlesNil:
		satisfying: [:result | result isPositive]
