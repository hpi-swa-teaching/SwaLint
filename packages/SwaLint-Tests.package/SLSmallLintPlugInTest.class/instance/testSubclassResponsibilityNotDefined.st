tests
testSubclassResponsibilityNotDefined

	self 
		test: #smallLintSubclassResponsibilityNotDefined
		on: {SLTestSubclassResponsibilityNotDefinedPass1. SLTestSubclassResponsibilityNotDefinedPass2. SLTestSubclassResponsibilityNotDefinedFail1. SLTestSubclassResponsibilityNotDefinedFail2}
		expectedResults: {0. 0. 1. 0}.
