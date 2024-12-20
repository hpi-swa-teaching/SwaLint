map - 2. code quality - coding styles
mapNamespaceSimulation: aSLTestData
	<sl2Test: #namespaceSimulation>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself