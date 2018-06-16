testing
testClassCount
	
	self resetTestSystem.
	
	testSystem
				addClass: (SLClassTestObject newFrom: (SLDummyClass01));
				addClass: (SLClassTestObject newFrom: (SLDummyClass02));
				addClass: (SLClassTestObject newFrom: (SLDummyClass04)).
				

	self assert: (testSystem resultOf: #classCount:) equals: 3