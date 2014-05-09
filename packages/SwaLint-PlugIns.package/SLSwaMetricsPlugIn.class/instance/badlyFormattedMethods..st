tests
badlyFormattedMethods: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasFormattingProblems
		satisfying: [:result | result isPositive]
