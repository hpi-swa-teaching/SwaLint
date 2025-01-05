tests
testMissingSubclassResponsibility

	self 
		test: #smallLintMissingSubclassResponsibility
		on: {SLTestMissingSubclassResponsibility01 . SLTestMissingSubclassResponsibility02 .
			SLTestMissingSubclassResponsibility03}
		expectedResults: {0 . 1 . 1}.
