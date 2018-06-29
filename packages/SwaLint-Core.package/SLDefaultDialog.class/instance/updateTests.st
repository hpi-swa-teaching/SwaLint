updating
updateTests
	| testsForCategories |
	testsForCategories := self findTestsForSelectedTestCategories.
	tests := testsForCategories sorted: [ :aTest :anotherTest | aTest name <= anotherTest name ].
	testIndex := 0.
	testsSelected := testsSelected select: [ :each | testsForCategories includes: each ].
	descriptionCollection := descriptionCollection intersection: testsSelected.
	self changed: #testList; changed: #testSelected; changed: #testDescription.