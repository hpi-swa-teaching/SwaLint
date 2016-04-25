tests
instanceVariableAccessIsConsistent: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #instanceVariableAccess
		satisfying: [:result | result isPositive]
