accessing-testCategories
filterTestCategories
	| pattern |
	pattern := UIManager default 
					request: 'Pattern(s) to select tests:\  (separate patterns with '';'')' withCRs
					initialAnswer: (testCategoryPattern ifNil: '*').
	(pattern isNil or: [pattern isEmpty]) ifTrue:
		[^self].
	testCategoriesSelected := ((testCategoryPattern := pattern) subStrings: ';')
							inject: Set new
							into: [:matches :subPattern|
								matches
									addAll: (self testCategories select: [ :each | subPattern match: each name]);
									yourself].
	self
		changed: #testCategorySelected;
		update.