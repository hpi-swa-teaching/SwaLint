tests
testSpelling
	
	self 
		test: #smallLintMethodSelectorsSpelling
		on: { SLSpelling }
		expectedResults: {1}.
	
	self 
		test: #smallLintMethodCommentsSpelling
		on: { SLSpelling }
		expectedResults: {1}.

	self 
		test: #smallLintMethodProtocolsSpelling
		on: { SLSpelling }
		expectedResults: {1}.
		
	self 
		test: #smallLintTemporaryVariableNamesSpelling
		on: { SLSpelling }
		expectedResults: {1}.



