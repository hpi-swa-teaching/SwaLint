map - 3. design quality - disharmonies
mapTraditionBreaker: aSLTestData
	<sl2Test: #traditionBreaker>

	self flag: #(todo discuss). "duplicate with mapRefusedParentBequest:?"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself