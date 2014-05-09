tests
avgLOCperMethod: aSLClassTestObject

	| a b |
	a := aSLClassTestObject resultOf: #classLOC.
	b := aSLClassTestObject methods size.
	^ (self numericResult: ((b > 0) ifTrue: [a / b] ifFalse: [0])
		 withThresholdFor: #AverageLOCperMethod)
			colorLowIsGood