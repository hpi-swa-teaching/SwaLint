tests
dataClass: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	
	^ self successResult:
		(((aSLClassTestObject resultOf: #weightOfClass) < (1/3)) and:
			[self looksLikeDataClass: aSLClassTestObject])