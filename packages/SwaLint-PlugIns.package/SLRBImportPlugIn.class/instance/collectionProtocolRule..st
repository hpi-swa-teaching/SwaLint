tests
collectionProtocolRule: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #collectionProtocolRuleMethod
		satisfying: [:result | result isPositive]
