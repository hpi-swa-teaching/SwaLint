tests
metaProgramming: aSLClassTestObject

	<slTestName: 'Hints of meta-programming'
	description: 'Meta-programming is certainly not a good practise and should only be used, if there are clear benefits that cannot be reached otherwise.'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodUsesMetaprogramming:
		satisfying: [:result | result isPositive]
