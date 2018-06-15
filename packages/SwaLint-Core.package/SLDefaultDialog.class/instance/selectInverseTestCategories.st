accessing-testCategories
selectInverseTestCategories

	testCategoriesSelected := self testCategories asSet 
		removeAll: testCategoriesSelected;
		yourself.
	self changed: #testCategorySelected; update.