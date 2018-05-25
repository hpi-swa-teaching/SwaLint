testing
testUnreferencedVaraibles

	self 
		test: #smallLintUsesTrue
		on: { SLUsesTrue }
		expectedResults: { 1 }.