tests
toDoCollectRule: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #toDoCollectRuleMethod
		satisfying: [:result | result isPositive]
