testing
test08IntensiveCouplingTest

	| couplingClass intensiveCoupling |
	
	self resetTestSystem.
	
	couplingClass := SLClassTestObject newFrom: (SLTestCouplingClass).
	
	testSystem
				addClass: couplingClass;
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass1));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass2));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass3));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass4));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass5));
				addClass: (SLClassTestObject newFrom: (SLTestCoupledClass6)).
	intensiveCoupling := couplingClass methodForSelector: #intensiveCoupling.
	
	self assert: (intensiveCoupling resultOf: #methodCINT) equals: 32.

	self assert: (intensiveCoupling resultOf: #intensiveCoupling) equals: true