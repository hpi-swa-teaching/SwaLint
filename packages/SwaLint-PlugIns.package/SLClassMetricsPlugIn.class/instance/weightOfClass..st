tests
weightOfClass: aSLClassTestObject

	| a b |
	a := aSLClassTestObject resultOf: #numberOfAccessorMethods.
	b := aSLClassTestObject resultOf: #numberOfInstanceMethods.	
	^ self numericResult: ((a > 1) ifTrue: [b/a-1] ifFalse: [b])