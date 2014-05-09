tests
unclassifiedMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #isUnclassifiedMethod
		satisfying: [:result | result isPositive]
