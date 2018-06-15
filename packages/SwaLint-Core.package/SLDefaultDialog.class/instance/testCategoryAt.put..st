accessing-testCategories
testCategoryAt: anInteger put: aBoolean

	testCategoriesSelected := testCategoriesSelected
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self testCategories at: anInteger ifAbsent: [ ^ self ]).
	self changed: #testCategorySelected; updateTests; changed: #hasRunnable.