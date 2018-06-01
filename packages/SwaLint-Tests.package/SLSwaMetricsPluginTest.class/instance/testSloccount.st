testing
testSloccount

	self 
		test: #sloccount
		on: {{SLTestLinesOfCode}. {SLTestLinesOfCode. SLEmptyClass}. {SLEmptyClass}}
		expectedResults: {12. 12. 0}