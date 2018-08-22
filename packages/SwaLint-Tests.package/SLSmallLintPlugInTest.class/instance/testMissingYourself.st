testing
testMissingYourself

	self 
		test: #smallLintMissingYourself
		on: { SLTestYourselfNotUsed }
		expectedResults: { 1 }.
