testing
testNumberOfAddedServices

	self test: #numberOfAddedServices
		on: { SLFixtureClassNASTen.
				SLFixtureClassNASOne.
				SLFixtureClassZeroNew }
		expectedResults: {10. 1. 0}.