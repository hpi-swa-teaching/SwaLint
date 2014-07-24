configuration
configureTestDictionaryForLineEndingTest

testRunner testDictionary addAll: 
		{(#numberOfMethods ->
			(SLTestData newFromArray: (SLClassMetricsPlugIn offeredTestsData at: 5)
				plugin: SLClassMetricsPlugIn)).
		(#differingLineEndings ->
			(SLTestData newFromArray: (SLCodingStylesPlugIn offeredTestsData at: 11)
				plugin: SLCodingStylesPlugIn)).
		(#csMethodLineEnding ->
			(SLTestData newFromArray: (SLCodingStylesPlugIn offeredTestsData at: 12)
				plugin: SLCodingStylesPlugIn)).}