tests
brainClass: aSLClassTestObject

	<slTestName: 'Brain class' 
	description: 'A Brain Class is a complex class that tends to accumulate an excessive amount of intelligence, usually in the form of several methods affected by Brain Method.'>

	aSLClassTestObject shouldBeClass.
	
	^ self successResult: 
		(((aSLClassTestObject resultOf: #weightedMethodCount:) >= #veryHigh) and:
		[(aSLClassTestObject resultOf: #tightClassCohesion:) < 0.5] and:
		[self looksLikeBrainClass: aSLClassTestObject])