updating
findTestsForSelectedTestCategories
	| items |
	self testCategoriesSelected ifEmpty: [ ^ OrderedCollection new ].
	items := self testCategoriesSelected gather: [ :category | self testEnvironment testsAtCategory: category ].
	^ items asOrderedCollection