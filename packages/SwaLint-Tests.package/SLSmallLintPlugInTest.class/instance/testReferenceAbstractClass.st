tests
testReferenceAbstractClass

	self 
		test: #smallLintAbstractClass
		on: {SLAbstractTestClass . SLAbstractTestReferencerClass  }
		expectedResults: {2 . 0}.
