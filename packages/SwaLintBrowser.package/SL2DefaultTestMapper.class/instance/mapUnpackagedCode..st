map - 2. code quality - metadata
mapUnpackagedCode: aSLTestData
	<sl2Test: #smallLintUnpackagedCode>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'metadata');
		yourself