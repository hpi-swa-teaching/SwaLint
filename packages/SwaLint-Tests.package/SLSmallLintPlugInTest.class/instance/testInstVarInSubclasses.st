testing
testInstVarInSubclasses

	self 
		test: #smallLintInstVarInSubclasses
		on: {SLInstVarInSubclassesNotSuperTestClass. SLInstVarInSubclassesSuperTestClass}
		expectedResults: {1. 0}.
