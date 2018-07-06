building
buildWith: aBuilder

	| windowSpec |
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		self buttonsFrame -> [self buildButtonsWith: aBuilder].	
		self categoriesFrame -> [self buildCategoriesWith: aBuilder].
		self classesFrame -> [self buildClassesWith: aBuilder].
		self descriptionFrame -> [self buildResultCountWith: aBuilder].
		self testCategoriesFrame -> [self buildTestCategoryListWith: aBuilder].	
		self testsFrame -> [self buildTestListWith: aBuilder].
	}.
	
	^aBuilder build: windowSpec