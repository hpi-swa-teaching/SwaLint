map - 3. design quality - refactoring opportunities
mapInstVarInAllSubclasses: aSLTestData
	<sl2Test: #instVarInAllSubclasses>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'refactoring opportunities');
		yourself