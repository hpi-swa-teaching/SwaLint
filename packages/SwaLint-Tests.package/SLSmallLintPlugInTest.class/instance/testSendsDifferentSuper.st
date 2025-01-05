tests
testSendsDifferentSuper

	self 
		test: #smallLintSendsDifferentSuper
		on: {SLTestSendsDifferentSuper01 . SLTestSendsDifferentSuper02}
		expectedResults: {0 . 1}.
