updating
findClassesForSelectedCategories
	| items chosenClasses |
	categoriesSelected isEmpty ifTrue: [ ^ Set new ].
	items := categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: (category name))
			collect: [ :each | Smalltalk at: each ])].
	chosenClasses := self environment classes.
	chosenClasses := chosenClasses select: [:each | items includes: each testObject].
	^ chosenClasses