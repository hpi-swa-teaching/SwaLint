tests
baseClassOverridingRatio: aSLClassTestObject

	<slTestName: 'Base Class Overriding Ratio [BOvR]'
	description: 'Answer the number of methods overriding methods in the superclass divided by the total number of methods defined in a class.' >
	
	| a b |
	a := (self overridingMethodsOf: aSLClassTestObject) size.
	b := aSLClassTestObject resultOf: #numberOfInstanceMethods:.	
	^ self percentageResult: ((b > 0) ifTrue: [a / b] ifFalse: [0])
		withThresholdFor: #BaseClassOverridingRatio