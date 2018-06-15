tests
interestingMethods: aSLClassTestObject

	<slTestName: 'Long or complex methods'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #brainMethod:
		satisfying: [:result | result isPositive]