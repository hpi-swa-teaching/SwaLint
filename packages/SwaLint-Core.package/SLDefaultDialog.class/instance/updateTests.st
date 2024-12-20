updating
updateTests
	| testsForCategories |
	testsForCategories := self findTestsForSelectedTestCategories.
	tests := testsForCategories sorted: [ :aTest :anotherTest | aTest name <= anotherTest name ].
	self changed: #testList.
	self testSelected: 0.
	self testsSelected: (self testsSelected select: [ :each | testsForCategories includes: each ]).