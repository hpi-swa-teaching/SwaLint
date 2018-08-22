updating
updateTestCategories

	testCategoriesSelected := testCategoriesSelected select: [ :each | self testCategories includes: each ].
	self changed: #testCategories; changed: #testCategorySelected.