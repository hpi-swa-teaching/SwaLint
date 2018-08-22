accessing-categories
categoryAt: anInteger put: aBoolean
	| target |
	target := self categories at: anInteger ifAbsent: [^ self].
	self selectByCategory
		ifTrue: [categoriesSelected := aBoolean
			ifTrue: [ categoriesSelected copyWith: target ]
			ifFalse: [ categoriesSelected copyWithout: target ]]
		ifFalse: [| categoryList package |
			package := self environment packageForCategory: (target testObject).
			categoryList := (self getCategoriesFor: package) select: [ :each | self categories includes: each].
			categoriesSelected := aBoolean
				ifTrue: [ categoriesSelected, categoryList ]
				ifFalse: [ categoriesSelected copyWithoutAll: categoryList ]].
	self changed: #categorySelected; updateClasses; updateResults.