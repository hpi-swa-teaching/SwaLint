tests
testTraditionBreaker

	| traditionBreaker testSystem |
	
	testSystem := SLSystemTestObject new.
	testSystem testRunner: testRunner.
	
	traditionBreaker := SLClassTestObject newFrom: (SLTestTraditionBreaker).
	
	testSystem
				addClass: traditionBreaker;
				addClass: (SLClassTestObject newFrom: (SLTestSuperClass)).

	self assert: (traditionBreaker resultOf: #traditionBreaker:) equals: true