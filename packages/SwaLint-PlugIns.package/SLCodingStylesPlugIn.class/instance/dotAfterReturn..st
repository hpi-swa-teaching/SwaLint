tests
dotAfterReturn: aSLTestObject

	<slTestName: 'Dot after Return Consistency'
	description: 'Evaluates how consistently dots were put after a return statement.'>

	aSLTestObject shouldBeClass.
	^ self qualityResult: (self countDotsAfterReturn: (self methodsOf: aSLTestObject))