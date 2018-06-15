accessing-categories
categoryAt: anIndex

	^ categoriesSelected includes: (self categories at: anIndex ifAbsent: [ ^ false ])