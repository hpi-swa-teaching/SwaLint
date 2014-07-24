tests
methodCDISP: aSLMethodTestObject
	"Number of classes := number of variables * 0.9"
	
	^ self percentageResult:
	(((aSLMethodTestObject resultOf: #methodCINT) <= 0) 
		ifTrue: [ 1 ]
		ifFalse: [ (self noavPerCint: aSLMethodTestObject) * 0.9 ]).