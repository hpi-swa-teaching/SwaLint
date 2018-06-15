private
substantialSizeAndComplexity: aSLClassTestObject

	^ (((aSLClassTestObject resultOf: #classAMW:) > #average) or:
		[ (aSLClassTestObject resultOf: #weightedMethodCount:) >= #veryHigh ]) and:
		[ (aSLClassTestObject resultOf: #numberOfMethods:) >= #high ]