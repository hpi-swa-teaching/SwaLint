accessing-testCategories
testCategoryAt: anInteger

	^ testCategoriesSelected includes: (self testCategories at: anInteger ifAbsent: [ ^ false ])