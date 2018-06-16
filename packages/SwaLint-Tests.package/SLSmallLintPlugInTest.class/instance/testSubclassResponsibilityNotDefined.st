testing
testSubclassResponsibilityNotDefined

	self 
		test: #smallLintSubclassResponsibilityNotDefined
		on: {SLTestSubclassResponsibilityNotDefined01 . SLDummyClass03}
		expectedResults: {1 . 0}.
