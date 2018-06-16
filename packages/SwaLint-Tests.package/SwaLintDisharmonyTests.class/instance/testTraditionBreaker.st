testing
testTraditionBreaker

	| traditionBreaker |
	
	self resetTestSystem.
	
	traditionBreaker := SLClassTestObject newFrom: (SLTestTraditionBreaker).
	
	testSystem
				addClass: traditionBreaker;
				addClass: (SLClassTestObject newFrom: (SLTestSuperClass)).

	self assert: (traditionBreaker resultOf: #traditionBreaker:) equals: true