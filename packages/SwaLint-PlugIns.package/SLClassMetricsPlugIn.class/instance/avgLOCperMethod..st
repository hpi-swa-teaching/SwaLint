tests
avgLOCperMethod: aSLClassTestObject

	<slTestName: 'Average LOC per Method'
	description: 'Answer the average lines of code per method of a class.' >

	| a b |
	a := aSLClassTestObject resultOf: #classLOC:.
	b := aSLClassTestObject methods size.
	^ (self numericResult: ((b > 0) ifTrue: [a / b] ifFalse: [0])
		 withThresholdFor: #AverageLOCperMethod)
			colorLowIsGood