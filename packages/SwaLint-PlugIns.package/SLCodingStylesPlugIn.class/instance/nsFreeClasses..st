namespace tests
nsFreeClasses: aSLSystemTestObject

	<slTestName: 'Classes without namespace'
	description: 'Number of all classes which don''t seem to have a namespace' >
	<slTestHidden: true
	longRuntime: nil>

	aSLSystemTestObject shouldBeSystem.
	^ (self integerResult:
		(aSLSystemTestObject allClasses count: [ :each | 
			(each resultOf: #nsClass:) = nil]))
		showRule: [:v | v > 0];
		colorRule: self freeClassesColorRule