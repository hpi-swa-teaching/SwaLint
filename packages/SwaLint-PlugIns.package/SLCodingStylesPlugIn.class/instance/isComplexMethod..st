tests
isComplexMethod: aSLMethodTestObject

	<slTestName: nil
	description: 'Test a single method whether it is complex.'>
	<slTestHidden: true
	longRuntime: false>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult:
		((((aSLMethodTestObject resultOf: #maxNesting:) >= #few) and:
		  [(aSLMethodTestObject resultOf: #methodCYCLO:) >= #high]
		) or: [
		  ((aSLMethodTestObject resultOf: #maxNesting:) >= #several) and:
		  [(aSLMethodTestObject resultOf: #methodCYCLO:) >= #average]
		])