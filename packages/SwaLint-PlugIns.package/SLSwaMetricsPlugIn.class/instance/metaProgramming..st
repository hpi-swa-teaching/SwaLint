tests
metaProgramming: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodUsesMetaprogramming
		satisfying: [:result | result isPositive]
