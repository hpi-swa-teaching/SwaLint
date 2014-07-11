tests
testIsSameAs
	
	| classes |
	classes := {
		(SLDummyClass0 as: SLTestObject).
		(SLDummyClass021 as: SLTestObject).
		(SLDummyClass021 as: SLTestObject)}.
	
	self 
		assert: [(classes at: 2) isSameAs: (classes at: 1)];
		deny: [(classes at: 1) isSameAs: (classes at: 2)];
		assert: [(classes at: 2) isSameAs: (classes at: 3)].
		