private
methodHasComment: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	| src tree |
	aSLMethodTestObject shouldBeMethod.
	src := aSLMethodTestObject sourceString.
	tree := (RBParser new)
		initializeParserWith: src;
		parseMethod: src.
	^ self failureResult: tree comments notEmpty