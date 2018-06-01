testing
testSendsDeprecatedMethodToGlobal

	self 
		test: #smallLintSendsDeprecatedMethodToGlobal
		on: { SLTestSendsDeprecatedMethodToGlobalFail. SLTestSendsDeprecatedMethodToGlobalPass }
		expectedResults: { 2. 0 }.