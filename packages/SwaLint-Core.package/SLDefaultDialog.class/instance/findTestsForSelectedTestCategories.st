updating
findTestsForSelectedTestCategories
	| items |
	testCategoriesSelected isEmpty ifTrue: [ ^ OrderedCollection new ].
	items := testCategoriesSelected gather: [ :category | environment testsAtCategory: category ].
	^ items asOrderedCollection