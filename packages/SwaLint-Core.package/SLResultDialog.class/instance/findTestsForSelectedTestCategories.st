updating
findTestsForSelectedTestCategories

	| items chosenTests |
	self testCategoriesSelected ifEmpty: [ ^ OrderedCollection new ].
	chosenTests := self testEnvironment ifNil: [Set new] ifNotNil: [self testEnvironment tests].
	items := self testCategoriesSelected gather: [ :category | self testEnvironment testsAtCategory: category ].
	items := items select: [ :each | (chosenTests collect: [ :test | test format]) includes: each format ].
	
	^ items asOrderedCollection