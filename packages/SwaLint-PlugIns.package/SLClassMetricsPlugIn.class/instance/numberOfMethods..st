tests
numberOfMethods: aSLClassTestObject

	^ self integerResult:
		aSLClassTestObject methods size 
		withThresholdFor: #NumberOfMethods