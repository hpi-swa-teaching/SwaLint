updating
updateTestCategories

	self testCategoriesSelected:
		(self testCategoriesSelected select: [ :each | self testCategories includes: each ]).