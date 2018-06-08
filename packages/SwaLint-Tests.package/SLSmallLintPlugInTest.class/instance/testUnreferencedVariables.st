testing
testUnreferencedVariables

	self 
		test: #unreferencedVariable
		on: { SLUnreferencedVariables }
		expectedResults: { true }.