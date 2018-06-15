tests
godClass: aSLClassTestObject

	<slTestName: 'God Class' 
	description: 'A God Class is a class that centralizes intelligence. Detected classes heavily access data of simpler classes, are large, complex and have a lot of non-communicative behaviour.'>

	aSLClassTestObject shouldBeClass.
	^ self successResult: 
		(((aSLClassTestObject resultOf: #accessToForeignData:) > #few) and:
			[((aSLClassTestObject resultOf: #weightedMethodCount:) >= #veryHigh) and:
			[(aSLClassTestObject resultOf: #tightClassCohesion:) <= (1/3)]])