configuration
configureTestDictionaryForShotgunSurgery

	testRunner testDictionary addAll:
		{(#shotgunSurgery ->
			(SLTestData newFromArray: (SLDisharmonyPlugIn offeredTestsData at: 5)
				plugin: SLDisharmonyPlugIn)).
		(#methodCC ->
			(SLTestData newFromArray: (SLMethodMetricsPlugIn offeredTestsData at: 11)
				plugin: SLMethodMetricsPlugIn)).
		(#methodCM ->
			(SLTestData newFromArray: (SLMethodMetricsPlugIn offeredTestsData at: 10)
				plugin: SLMethodMetricsPlugIn)).
		(#methodCallers ->
			(SLTestData newFromArray: (SLMethodMetricsPlugIn offeredTestsData at: 9)
				plugin: SLMethodMetricsPlugIn)).}.