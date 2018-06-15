updating
findClassesForSelectedCategories
	| items |
	categoriesSelected isEmpty ifTrue: [ ^ OrderedCollection new ].
	items := categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: category)
			collect: [ :each | Smalltalk at: each ])].
	^ items asOrderedCollection