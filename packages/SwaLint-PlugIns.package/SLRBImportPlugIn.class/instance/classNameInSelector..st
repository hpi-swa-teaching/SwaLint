tests
classNameInSelector: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #classNameInSelectorMethod
		satisfying: [:result | result isPositive]
