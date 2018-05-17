testing
testExcessiveMethods

	self 
		test: #smallLintExcessiveMethods
		on: {SLExcessiveMethodsNotQuiteTestClass. SLExcessiveMethodsTestClass}
		expectedResults: {0. 40}.
