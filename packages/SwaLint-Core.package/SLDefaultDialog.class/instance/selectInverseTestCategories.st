accessing-testCategories
selectInverseTestCategories

	self testCategoriesSelected:
		(self testCategories asSet 
			removeAll: self testCategoriesSelected;
			yourself).