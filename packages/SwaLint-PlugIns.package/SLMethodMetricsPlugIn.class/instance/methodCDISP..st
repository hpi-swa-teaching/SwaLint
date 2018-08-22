tests
methodCDISP: aSLMethodTestObject
	"Number of classes := number of variables * 0.9"

	<slTestName: 'Coupling Dispersion of a Method [CDISP]'
	description: 'The number of classes in which the operations called from the measured operation are defined, divided by CINT'>
	
	^ self percentageResult:
	(((aSLMethodTestObject resultOf: #methodCINT:) <= 0) 
		ifTrue: [ 1 ]
		ifFalse: [ (self noavPerCint: aSLMethodTestObject) * 0.9 ])