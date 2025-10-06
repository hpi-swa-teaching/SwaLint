map - 2. code quality - syntax
mapDuplicationInIfTrueIfFalseBlocks: aSLTestData
	<sl2Test: #smallLintEndTrueFalse>

	^ (self makeTestFrom: aSLTestData)
		title: 'Duplication in #ifTrue:ifFalse: blocks';
		addCategoryPath: #('code quality' 'syntax');
		yourself