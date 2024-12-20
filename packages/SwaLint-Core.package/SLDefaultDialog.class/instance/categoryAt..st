accessing-categories
categoryAt: anIndex

	^ self categoriesSelected includes:
		(self categories at: anIndex ifAbsent: [ ^ false ])