updating
updateCategories

	self categoriesSelected:
		(self categoriesSelected select: [ :each | self categories includes: each ]).