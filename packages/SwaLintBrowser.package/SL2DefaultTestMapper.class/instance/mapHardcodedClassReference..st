map - 2. code quality - syntax
mapHardcodedClassReference: aSLTestData
	<sl2Test: #smallLintRefersToClass>

	^ (self makeTestFrom: aSLTestData)
		title: 'Hardcoded class reference';
		addCategoryPath: #('code quality' 'syntax');
		yourself