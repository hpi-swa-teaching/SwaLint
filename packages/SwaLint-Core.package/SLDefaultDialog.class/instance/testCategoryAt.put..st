accessing-testCategories
testCategoryAt: anInteger put: aBoolean

	| target |
	target := self testCategories at: anInteger ifAbsent: [ ^ self ].
	self testCategoriesSelected:
		(self testCategoriesSelected
			perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
			with: target).