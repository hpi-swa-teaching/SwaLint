accessing-categories
selectInverseCategories

	categoriesSelected := self categories asSet 
		removeAll: categoriesSelected;
		yourself.
	self changed: #allSelections; changed: #categorySelected; update.