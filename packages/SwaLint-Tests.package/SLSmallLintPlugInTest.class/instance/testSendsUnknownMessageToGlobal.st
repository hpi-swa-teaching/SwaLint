tests
testSendsUnknownMessageToGlobal

	self 
		test: #smallLintSendsUnknownMessageToGlobal
		on: { SLTestSendsUnknownMessageToGlobalFail. SLTestSendsUnknownMessageToGlobalPass }
		expectedResults: { 2. 0 }.