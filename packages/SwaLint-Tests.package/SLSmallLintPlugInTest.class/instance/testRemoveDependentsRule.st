tests
testRemoveDependentsRule

	self 
		test: #smallLintAddRemoveDependents
		on: {SLTestDependentClass . SLTestDependentClass2 }
		expectedResults: {3 . 0}
