tests
classAMW: aSLClassTestObject

	| amw methodNumber totalWeight |
	
	methodNumber := (aSLClassTestObject resultOf: #numberOfMethods) result.
	totalWeight := (aSLClassTestObject resultOf: #weightedMethodCount) result.
	amw := (methodNumber = 0) ifTrue: [0]
								   ifFalse: [totalWeight / methodNumber].
	
	^ self numericResult: amw withThresholdFor: #MethodCYCLO