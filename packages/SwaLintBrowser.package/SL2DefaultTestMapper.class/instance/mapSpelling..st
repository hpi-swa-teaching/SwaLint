map - 2. code quality - coding styles
mapSpelling: aSLTestData
	<sl2Test>

	aSLTestData category = 'Spelling' ifFalse: [^ nil].
	
	^ (self makeTestFrom: aSLTestData)
		addCategoryPath: #('code quality' 'spelling');
		yourself