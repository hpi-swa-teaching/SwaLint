tests
nilProgramming: aSLClassTestObject

	<slTestName: 'Handling of nil-values'
	description: 'Consider using the Nil Object pattern instead. Oftentimes, nil values actually have a meaning and can therefore be replaced with a domain specific object. This makes the code more intuitive and debugging easier.'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHandlesNil:
		satisfying: [:result | result isPositive]
