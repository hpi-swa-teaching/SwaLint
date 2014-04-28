tests
interestingMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #brainMethod
		satisfying: [:result | result isPositive]