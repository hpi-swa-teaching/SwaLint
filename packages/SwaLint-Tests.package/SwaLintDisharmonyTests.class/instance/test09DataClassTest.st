testing
test09DataClassTest

	| dataClass |
	
	self resetTestSystem.
	
	dataClass := SLClassTestObject newFrom: SLTestFeatureEnvy.
	dataClass parent: testSystem.
	
	self assert: ((dataClass resultOf: #dataClass) = true)