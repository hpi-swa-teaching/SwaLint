testing
testExcessiveVariables

	self 
		test: #smallLintExcessiveVariables 
		on: { SLTestExcessiveVariables01 . SLTestExcessiveVariablesNotQuite01 }
		expectedResults: { 1 . 0 }.
