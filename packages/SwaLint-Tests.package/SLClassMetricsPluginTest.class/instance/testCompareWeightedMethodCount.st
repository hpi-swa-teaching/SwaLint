testing
testCompareWeightedMethodCount
	| object tests |
	object := SLFixtureClassBase as: SLTestObject.
	tests :=  {#numberOfMethods. #weightedMethodCount}.

	testRunner runOnTests: tests andTestObjects: {object}.
	
	self assert: 
		(object resultOf: tests first) = 
		(object resultOf: tests second).