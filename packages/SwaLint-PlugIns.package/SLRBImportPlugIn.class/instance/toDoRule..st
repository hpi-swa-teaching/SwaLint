tests
toDoRule: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #toDoRuleMethod
		satisfying: [:result | result isPositive]
