testing
testWeightedMethodCount

	self 
		test: #weightedMethodCount:
		on: { SLFixtureClassBase.
				SLFixtureClassWMCHigh }
		expectedResults: {10. 19}.