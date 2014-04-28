running
addTestToSelection: aTest inCategory: aString
	"Marks a test as user selected, so its results will be shown
	in the result dialog. Use sparingly."

	| testData |
	testData := self testDataFor: aTest.
	testData isUserSelected ifFalse: [
		testData markUserSelected.
		aString ifNotNil: [testData category: aString].
		self testObjects do: [ :each |
			each testWith: aTest]].