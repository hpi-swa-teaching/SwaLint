accessing-categories
categoryAt: anInteger put: aBoolean

	| target |
	target := self categories at: anInteger ifAbsent: [^ self].
	self categoriesSelected:
		(self selectByCategory
			ifTrue: [aBoolean
				ifTrue: [ self categoriesSelected copyWith: target ]
				ifFalse: [ self categoriesSelected copyWithout: target ]]
			ifFalse: [| categoryList package |
				package := self testEnvironment packageForCategory: target.
				categoryList := self getCategoriesFor: package.
				aBoolean
					ifTrue: [ self categoriesSelected, categoryList ]
					ifFalse: [ self categoriesSelected copyWithoutAll: categoryList ]]).