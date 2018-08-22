testing
testNumberOfAddedServices

	self test: #classNAS:
		on: { SLFixtureClassNASTen.
				SLFixtureClassNASOne.
				SLFixtureClassZeroNew }
		expectedResults: {10. 1. 0}.