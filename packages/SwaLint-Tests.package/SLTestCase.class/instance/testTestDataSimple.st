tests
testTestDataSimple
	| td |
	
	td := SLTestData newFromDefault.
	td setSelector: #test name: 'test' description: 'test2' hidden: true longRuntime: true.
	self
		assert: td plugIn = nil;
		assert: td symbol = #test;
		assert: td name = 'test';
		assert: td description = 'test2';
		assert: td category = SwaLint hiddenCategory;
		assert: td method = #test. 