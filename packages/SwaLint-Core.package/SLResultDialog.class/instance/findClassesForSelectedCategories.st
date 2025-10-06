updating
findClassesForSelectedCategories

	| items chosenClasses |
	self categoriesSelected isEmpty ifTrue: [ ^ Set new ].
	items := (self categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: (category name))
			collect: [ :each | Smalltalk at: each ])])
				asSet.
	chosenClasses := self testEnvironment classes.
	chosenClasses := chosenClasses select: [:each | items includes: each testObject].
	
	^ chosenClasses