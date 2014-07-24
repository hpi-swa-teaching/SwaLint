testing
test03ShotgunSurgeryTest

	| shotgunSurgery |
	
	self resetTestSystem.
	
	shotgunSurgery := SLMethodTestObject newFrom: (SLTestMethodCaller01 														lookupSelector: #beingCalled).
	testSystem
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller01));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller02));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller03));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller04));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller05));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller06));
				addClass: (SLClassTestObject newFrom: (SLTestMethodCaller07)).
	shotgunSurgery parent: testSystem.
	
	self assert: (shotgunSurgery resultOf: #methodCC) equals: 7.
	self assert: (shotgunSurgery resultOf: #methodCM) equals: 35.
	
	self assert: (shotgunSurgery resultOf: #shotgunSurgery) equals: true