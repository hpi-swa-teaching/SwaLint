accessing-categories
selectAllCategories

	categoriesSelected := self categories asSet.
	self changed: #categorySelected; update.