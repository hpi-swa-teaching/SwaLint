tests
longMethod: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #longMethodMethod
		satisfying: [:result | result isPositive]
