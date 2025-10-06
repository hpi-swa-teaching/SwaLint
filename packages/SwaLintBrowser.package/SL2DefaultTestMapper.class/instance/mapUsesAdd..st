map - 2. code quality - libraries - Collections
mapUsesAdd: aSLTestData
	<sl2Test: #smallLintUsesAdd>

	self flag: #(todo discuss). "this is not an antipattern..."
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself