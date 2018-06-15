configuration
loadAllTests

	| allTests |
	
	allTests := Set new.
	
	self allPlugIns do: [ :plugIn | allTests addAll: (plugIn offeredTestsData collect: 
		[ :testsData | ((testsData at: 1)
			->(SLTestData newFromArray: testsData plugin: plugIn)) ]) ].
	testRunner testDictionary addAll: allTests