updating
removeTest: aSLTestData
	"Remove all tests with the symbol of aSLTestData"

	self categoryDict keysAndValuesDo: [ :cat :symbols |
		self categoryDict 
			at: cat
			put: (symbols removeAllSuchThat: [ :each | each = aSLTestData symbol]).
		(self categoryDict at: cat) ifEmpty: [self categoryDict removeKey: cat]	]