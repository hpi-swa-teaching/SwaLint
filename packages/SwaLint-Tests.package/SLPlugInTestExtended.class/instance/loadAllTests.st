configuration
loadAllTests

	self allPlugIns
		do: [:plugIn | testRunner testDictionary addAll: ((plugIn offeredTests collect: 
		[ :testsData | (testsData symbol)
			-> testsData ]))].