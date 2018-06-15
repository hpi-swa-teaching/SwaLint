testing
testBrainClass

	| brainMethod brainClass |
	
	self resetTestSystem.
	
	brainClass := SLClassTestObject newFrom: SLTestBrainClass.
	brainClass parent: testSystem.
	
	brainMethod := SLMethodTestObject newFrom: 
				(SLTestBrainClass methodDict at: #brainMethod).
	brainMethod parent: brainClass.

	self assert: ((brainClass resultOf: #brainClass:) = true)