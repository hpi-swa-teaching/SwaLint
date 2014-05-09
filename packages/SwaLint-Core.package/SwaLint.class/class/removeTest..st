plugins
removeTest: aSLTestData
	"Remove all tests with the symbol of aSLTestData"

	self categories keysAndValuesDo: [ :cat :symbols |
		self categories 
			at: cat
			put: (symbols removeAllSuchThat: [ :each | each = aSLTestData symbol]).
		(self categories at: cat) ifEmpty: [self categories removeKey: cat]	]