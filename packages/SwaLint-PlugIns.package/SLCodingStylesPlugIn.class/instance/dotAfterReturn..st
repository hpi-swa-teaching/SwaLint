tests
dotAfterReturn: aSLTestObject

	aSLTestObject shouldBeClass.
	^ self qualityResult: (self countDotsAfterReturn: (self methodsOf: aSLTestObject))