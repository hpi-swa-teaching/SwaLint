map - 3. design quality - disharmonies
mapRefusedParentBequest: aSLTestData
	<sl2Test: #refusedParentBequest>

	self flag: #(todo discuss). "duplicate with mapTraditionBreaker:?"
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('design quality' 'disharmonies');
		yourself