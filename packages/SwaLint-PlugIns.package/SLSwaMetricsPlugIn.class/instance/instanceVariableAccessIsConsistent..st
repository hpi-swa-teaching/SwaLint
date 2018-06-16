tests
instanceVariableAccessIsConsistent: aSLClassTestObject
	
	<slTestHidden: true
	longRuntime: nil>
	
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #instanceVariableAccess
		satisfying: [:result | result isPositive]
