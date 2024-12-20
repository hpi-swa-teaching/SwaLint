accessing
testCategoriesSelected: aSet

	testCategoriesSelected := aSet.
	self changed: #testCategoriesSelected; changed: #testCategoryAt:; updateTests; changed: #hasRunnable.