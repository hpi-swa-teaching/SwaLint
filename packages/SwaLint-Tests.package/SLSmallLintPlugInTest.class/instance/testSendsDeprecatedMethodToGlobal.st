testing
testSendsDeprecatedMethodToGlobal
	"Testing this does not make much sense, since it differs on different platforms for some reason."
	"self 
		test: #smallLintSendsDeprecatedMethodToGlobal
		on: { SLTestSendsDeprecatedMethodToGlobalFail. SLTestSendsDeprecatedMethodToGlobalPass }
		expectedResults: { 2. 0 }."