testing
test10BrainMethodTest

	| brainClass |
	
	self resetTestSystem.
	
	brainClass := SLClassTestObject newFrom: SLTestBrainClass.
	testSystem addClass: brainClass.
	
	self assert: (((brainClass methodForSelector: #brainMethod) resultOf: #brainMethod) = true)