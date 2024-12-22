accessing
selectedSystemCategories: categories

	self target systemCategories: categories.
	
	self changed: #selectedSystemCategories.
	
	self selectedClasses: (self selectedClasses intersection: self availableClasses).