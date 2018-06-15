testing
testBaseClassOverridingRatio

	self 
		test: #baseClassOverridingRatio:
		on: { SLFixtureClassBOvRFull.
				SLFixtureClassBOvRHalf.
				SLFixtureClassBOvRHighThird.
				SLFixtureClassBOvRLowThird.
				SLFixtureClassZeroNew }
		expectedResults: {1. 0.5. (2/3). (1/3). 0}.
