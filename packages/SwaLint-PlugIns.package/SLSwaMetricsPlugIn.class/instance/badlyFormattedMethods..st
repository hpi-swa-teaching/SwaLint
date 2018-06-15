tests
badlyFormattedMethods: aSLClassTestObject

	<slTestName: 'Methods with very long lines'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasFormattingProblems:
		satisfying: [:result | result isPositive]
