tests
metaProgramming: aSLClassTestObject

	<slTestName: 'Hints of meta-programming'
	description: nil>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodUsesMetaprogramming:
		satisfying: [:result | result isPositive]
