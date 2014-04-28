namespace tests
nsFreeClasses: aSLSystemTestObject

	aSLSystemTestObject shouldBeSystem.
	^ (self integerResult:
		(aSLSystemTestObject allClasses count: [ :each | 
			(each resultOf: #nsClass) = nil]))
		showRule: [:v | v > 0];
		colorRule: self freeClassesColorRule