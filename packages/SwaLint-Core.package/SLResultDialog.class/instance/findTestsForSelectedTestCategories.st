updating
findTestsForSelectedTestCategories
	| items chosenTests |
	testCategoriesSelected isEmpty ifTrue: [ ^ OrderedCollection new ].
	chosenTests := self environment ifNil: [Set new] ifNotNil: [self environment tests].
	items := testCategoriesSelected gather: [ :category | self environment testsAtCategory: category ].
	items := items select: [ :each | (chosenTests collect: [ :test | test format]) includes: each format ].
	^ items asOrderedCollection