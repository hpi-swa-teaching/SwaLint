accessing
categoriesSelected: aSet

	categoriesSelected := aSet.
	self changed: #categoriesSelected; updateClasses.