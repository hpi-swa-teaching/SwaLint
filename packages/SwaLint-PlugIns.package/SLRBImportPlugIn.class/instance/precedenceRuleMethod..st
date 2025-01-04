methodTests
precedenceRuleMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	| rbMethodNode isMatching |
	aMethodTestObject shouldBeMethod.
	rbMethodNode := RBParser parseMethod: aMethodTestObject sourceCode.
	isMatching := (RBParseTreeSearcher new
	       matchesAnyOf: #('`{:node | node isMessage and: [node hasParentheses not and: [#(#+ #-) includes: node selector]]} * `@C'
			'`{:node | node isMessage and: [node hasParentheses not and: [#(#+ #-) includes: node selector]]} / `@C'
			'`{:node | node isMessage and: [node hasParentheses not and: [#(#+ #-) includes: node selector]]} // `@C')
	       do:[:aNode :answer | true])
	               executeTree: rbMethodNode initialAnswer: false. 

	^self booleanResult: isMatching
