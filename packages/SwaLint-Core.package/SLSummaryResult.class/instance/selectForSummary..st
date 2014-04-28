summarizing
selectForSummary: aSLTestObject

	^ self summarizingCondition value:
		(aSLTestObject resultOf: self summarizedTest)