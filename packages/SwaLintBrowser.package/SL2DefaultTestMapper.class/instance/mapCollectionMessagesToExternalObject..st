map - 3. design quality - antipatterns - libraries - Collections
mapCollectionMessagesToExternalObject: aSLTestData
	<sl2Test: #smallLintCollectionMessagesToExternalObject>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'antipatterns' 'libraries' 'Collections');
		yourself