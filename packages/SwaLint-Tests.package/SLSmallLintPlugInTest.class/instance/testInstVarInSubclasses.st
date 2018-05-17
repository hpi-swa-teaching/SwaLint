testing
testInstVarInSubclasses

	self 
		test: #smallLintInstVarInSubclasses
		on: {SLInstVarInSubclassesNotSuperTestClass. SLInstVarInSubclassesSuperTestClass}
		expectedResults: {0. 1}.
