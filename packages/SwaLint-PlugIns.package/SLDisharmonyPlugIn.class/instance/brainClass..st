tests
brainClass: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	
	^ self successResult: 
		(((aSLClassTestObject resultOf: #weightedMethodCount) >= #veryHigh) and:
		((aSLClassTestObject resultOf: #tightClassCohesion) < 0.5) and:
		(self looksLikeBrainClass: aSLClassTestObject))