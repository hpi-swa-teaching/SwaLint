menu
selectClassCategoriesByFilter

	| pattern matches |
	pattern := UIManager default request: 'Pattern to select categories' initialAnswer: '*'.
	
	pattern ifNotEmpty: [
		classCategories list withIndexDo: [ :each :index | 
			matches := pattern match: each.
			classCategories listSelectionAt: index put: matches ]].