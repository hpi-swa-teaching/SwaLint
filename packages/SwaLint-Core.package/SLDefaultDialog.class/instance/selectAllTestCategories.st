accessing-testCategories
selectAllTestCategories

	testCategoriesSelected := self testCategories asSet.
	self changed: #testCategorySelected; update.