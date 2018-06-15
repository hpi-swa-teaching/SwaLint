tests
unclassifiedMethods: aSLClassTestObject

	<slTestName: 'Unclassified methods'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #isUnclassifiedMethod:
		satisfying: [:result | result isPositive]
