tests
isComplexMethod: aSLMethodTestObject

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult:
		((((aSLMethodTestObject resultOf: #maxNesting) >= #few) and:
		  [(aSLMethodTestObject resultOf: #methodCYCLO) >= #high]
		) or: [
		  ((aSLMethodTestObject resultOf: #maxNesting) >= #several) and:
		  [(aSLMethodTestObject resultOf: #methodCYCLO) >= #average]
		])