tests
testTestDataSimple
	| td |
	self 
		should: [SLTestData newFrom: Object] 
		raise: Error. "test nil data"
	
	td := SLTestData newNamed: #test. "test for explicitly named empty"
	self
		assert: td  plugIn = nil;
		assert: td symbol = #test;
		assert: td name = 'test';
		assert: td description = 'no description';
		assert: td category = nil;
		assert: td method = #test:. 