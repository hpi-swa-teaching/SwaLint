updating
findTestsForSelectedTestCategories
	| items |
	self testCategoriesSelected ifEmpty: [ ^ OrderedCollection new ].
	items := self testCategoriesSelected gather: [ :category | self environment testsAtCategory: category ].
	^ items asOrderedCollection