tests
testInconsistentMethodClassification

	self 
		test: #smallLintInconsistentMethodClassification
		on: {SLInconsistentMethodClassificationNotTestClass. SLInconsistentMethodClassificationTestClass}
		expectedResults: {0. 2}.
