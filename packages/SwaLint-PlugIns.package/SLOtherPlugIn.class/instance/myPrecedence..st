tests
myPrecedence: aSLClassTestObject
	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods 
		withResultOf: #myTest
		satisfying: [:result | result isPositive]