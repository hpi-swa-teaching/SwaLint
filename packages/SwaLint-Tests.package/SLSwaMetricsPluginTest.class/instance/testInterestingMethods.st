testing
testInterestingMethods

	self 
		test: #interestingMethods
		on: {SLTestBrainClass. SLDummyClass0. SLEmptyClass}
		expectedResults: {1. 0. 0}