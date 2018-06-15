updating
updateCategories

	categoriesSelected := categoriesSelected select: [ :each | self categories includes: each ].
	self changed: #categoryList; changed: #categorySelected.