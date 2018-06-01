testing
testBadlyFormattedMethods

	self 
		test: #badlyFormattedMethods
		on: {SLTestBadlyFormattedMethodsFail. SLTestBadlyFormattedMethodsPass}
		expectedResults: {2. 0}