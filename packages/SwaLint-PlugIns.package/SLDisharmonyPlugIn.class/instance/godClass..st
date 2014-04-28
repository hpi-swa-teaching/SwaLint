tests
godClass: aSLClassTestObject

	aSLClassTestObject shouldBeClass.
	^ self successResult: 
		(((aSLClassTestObject resultOf: #accessToForeignData) > #few) and:
			[((aSLClassTestObject resultOf: #weightedMethodCount) >= #veryHigh) and:
			[(aSLClassTestObject resultOf: #tightClassCohesion) <= (1/3)]])