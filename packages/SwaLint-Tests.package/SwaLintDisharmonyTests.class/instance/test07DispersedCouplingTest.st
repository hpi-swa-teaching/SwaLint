testing
test07DispersedCouplingTest

	| couplingClass dispersedCoupling |
	
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
	dispersedCoupling := couplingClass methodForSelector: #dispersedCoupling.
	
	self assert: (dispersedCoupling resultOf: #methodCINT) equals: 31.

	self assert: (dispersedCoupling resultOf: #dispersedCoupling) equals: true