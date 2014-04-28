tests
baseClassOverridingRatio: aSLClassTestObject
	
	| a b |
	a := (self overridingMethodsOf: aSLClassTestObject) size.
	b := aSLClassTestObject resultOf: #numberOfInstanceMethods.	
	^ self percentageResult: ((b > 0) ifTrue: [a / b] ifFalse: [0])
		withThresholdFor: #BaseClassOverridingRatio