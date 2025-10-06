map - 1. possible bugs - libraries - Graphics
mapThreeElementPoint: aSLTestData
	<sl2Test: #smallLintThreeElementPoint>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('possible bugs' 'libraries' 'Graphics');
		yourself