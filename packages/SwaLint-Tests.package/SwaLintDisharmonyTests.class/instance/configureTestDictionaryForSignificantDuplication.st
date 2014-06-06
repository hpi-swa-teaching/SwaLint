configuration
configureTestDictionaryForSignificantDuplication

	testRunner testDictionary addAll:
		{(#significantDuplication ->
			(SLTestData newFromArray: (SLDisharmonyPlugIn offeredTestsData at: 6)
				plugin: SLDisharmonyPlugIn)).}.