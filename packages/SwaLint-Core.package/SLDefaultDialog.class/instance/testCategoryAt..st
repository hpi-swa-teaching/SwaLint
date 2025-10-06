accessing-testCategories
testCategoryAt: anInteger

	^ self testCategoriesSelected includes:
		(self testCategories at: anInteger ifAbsent: [ ^ false ])