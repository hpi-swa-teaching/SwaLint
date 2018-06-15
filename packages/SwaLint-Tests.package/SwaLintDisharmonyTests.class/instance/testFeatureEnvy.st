testing
testFeatureEnvy

	| enviousClass |
	
	self resetTestSystem.
	
	enviousClass := SLClassTestObject newFrom: SLTestEnviousClass.
	testSystem addClass: enviousClass.
	testSystem addClass: (SLClassTestObject newFrom: SLTestFeatureEnvy).
	
	self assert: (((enviousClass methodForSelector: #enviousMethod)
												resultOf: #featureEnvy:) isPositive)