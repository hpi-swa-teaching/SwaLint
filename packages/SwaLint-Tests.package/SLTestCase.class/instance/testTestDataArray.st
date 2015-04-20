tests
testTestDataArray
	| td data |
	data := {#test. 'test'. 'TEST'. #testCat. #testSel }.
	td := SLTestData newFrom: data.
	self
		assert: td plugIn isNil;
		assert: td symbol = (data at: 1);
		assert: td name = (data at: 2);
		assert: td description = (data at: 3);
		assert: td category = (data at: 4);
		assert: td method = (data at: 5). 