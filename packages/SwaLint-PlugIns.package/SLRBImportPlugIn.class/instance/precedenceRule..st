tests
precedenceRule: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #precedenceRuleMethod
		satisfying: [:result | result isPositive]