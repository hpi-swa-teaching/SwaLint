tests
badlyFormattedMethods: aSLClassTestObject

	<slTestName: 'Methods with very long lines'
	description: 'Long lines cannot be displayed in an average sized browser window, making your code harder to read. Also it can be a symptom of bad code quality.'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasFormattingProblems:
		satisfying: [:result | result isPositive]
