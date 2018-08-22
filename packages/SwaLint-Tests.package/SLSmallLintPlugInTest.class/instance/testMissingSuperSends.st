testing
testMissingSuperSends

	self 
		test: #smallLintMissingSuperSends
		on: {SLTestMissingSuperSends01 . SLTestMissingSuperSends02}
		expectedResults: {0 . 1}.
