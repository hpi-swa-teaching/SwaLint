building
buildWith: aBuilder
	| window |
	window := self buildWindowWith: aBuilder specs: {
		self buttonsFrame -> [self buildButtonsWith: aBuilder].
		self categoriesFrame -> [self buildCategoriesWith: aBuilder].
		self classesFrame -> [self buildClassesWith: aBuilder].
		self descriptionFrame -> [self buildDescriptionWith: aBuilder].
		self testCategoriesFrame -> [self buildTestCategoryListWith: aBuilder].
		self testsFrame -> [self buildTestListWith: aBuilder].
	}.
	^ aBuilder build: window