accessing-categories
selectInverseCategories

	self categoriesSelected:
		(self categories asSet 
			removeAll: self categoriesSelected;
			yourself).
	self changed: #allSelections.