building
buildWith: aBuilder
	| window tool |
	window := self buildWindowWith: aBuilder specs:{
		self buttonsFrame -> [self buildButtonsWith: aBuilder].
		self categoriesFrame -> [self buildCategoriesWith: aBuilder].
		self classesFrame -> [self buildClassesWith: aBuilder].
		self testCategoriesFrame -> [self buildTestCategoryListWith: aBuilder].
		self testsFrame -> [self buildTestListWith: aBuilder].
		self resultsFrame -> [self buildResultsWith: aBuilder]}.

	tool := aBuilder build: window.

	Smalltalk isMorphic
		ifTrue: [ self createOverviewPyramidMorph: tool ].
	^ tool