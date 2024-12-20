map - 2. code quality - libraries - Collections
mapCollectionProtocol: aSLTestData
	<sl2Test: #collectionProtocolRule>

	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'libraries' 'Collections');
		yourself