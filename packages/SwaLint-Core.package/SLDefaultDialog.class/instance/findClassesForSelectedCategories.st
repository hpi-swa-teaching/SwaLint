updating
findClassesForSelectedCategories
	| items |
	self categoriesSelected isEmpty ifTrue: [ ^ OrderedCollection new ].
	items := self categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: category)
			collect: [ :each | Smalltalk at: each ])].
	^ items asSet