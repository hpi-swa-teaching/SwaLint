menu
selectClassesByFilter

	| pattern matches |
	pattern := UIManager default request: 'Pattern to select classes' initialAnswer: '*'.
	
	classes list withIndexDo: [ :each :index | 
		matches := pattern match: each.
		classes listSelectionAt: index put: matches ].