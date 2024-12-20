map - 2. code quality - coding styles
mapInstanceVariableCapitalization: aSLTestData
	<sl2Test: #instanceVariableCapitalizationRule>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'coding styles');
		yourself