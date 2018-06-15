accessing-categories
categoryAt: anInteger put: aBoolean
	| target |
	target := self categories at: anInteger ifAbsent: [^ self].
	self selectByCategory
		ifTrue: [categoriesSelected := aBoolean
			ifTrue: [ categoriesSelected copyWith: target ]
			ifFalse: [ categoriesSelected copyWithout: target ]]
		ifFalse: [| categoryList package |
			package := self environment packageForCategory: target.
			categoryList := self getCategoriesFor: package.
			categoriesSelected := aBoolean
				ifTrue: [ categoriesSelected, categoryList ]
				ifFalse: [ categoriesSelected copyWithoutAll: categoryList ]].
	self changed: #categorySelected; updateClasses.