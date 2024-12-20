map - 2. code quality - libraries - Collections
mapStringConcatenation: aSLTestData
	<sl2Test: #smallLintStringConcatenation>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		description: aSLTestData description , '\\For this one, weight your individual coding style against possible performance issues. You can also use String>>format: or String>>expandMacrosWith: et al.' withCRs;
		yourself