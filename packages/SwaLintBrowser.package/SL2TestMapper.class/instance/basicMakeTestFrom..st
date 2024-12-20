creation
basicMakeTestFrom: aSLTestData

	^ (self testClass newForTest: aSLTestData)
		categoryPaths: OrderedCollection new;
		yourself