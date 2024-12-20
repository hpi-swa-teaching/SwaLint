map - 2. code quality - libraries
mapMissingTranslationsInMenus: aSLTestData
	<sl2Test: #smallLintMissingTranslationsInMenus>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries');
		yourself