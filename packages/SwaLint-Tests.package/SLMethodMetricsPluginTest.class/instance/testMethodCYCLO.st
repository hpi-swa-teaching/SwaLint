testing
testMethodCYCLO

	self 
		test: #methodCYCLO
		on: {SLDummyClass03 methodDict at: #allIfs.
			SLDummyClass03 methodDict at: #nestedIfs.}
		expectedResults: {13. 5}.