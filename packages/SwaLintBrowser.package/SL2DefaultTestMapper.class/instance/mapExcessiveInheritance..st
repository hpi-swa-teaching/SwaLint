map - 3. design quality - disharmonies
mapExcessiveInheritance: aSLTestData
	<sl2Test: #smallLintExcessiveInheritance>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself