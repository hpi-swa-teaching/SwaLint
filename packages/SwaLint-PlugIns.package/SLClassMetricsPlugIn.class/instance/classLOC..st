tests
classLOC: aSLClassTestObject

	^ self integerResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodLOC)
		withThresholdFor: #ClassLOC