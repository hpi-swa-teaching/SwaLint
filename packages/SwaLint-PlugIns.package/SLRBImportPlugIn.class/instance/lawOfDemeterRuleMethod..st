as yet unclassified
lawOfDemeterRuleMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>
	
	| rbMethodNode isMatching |
	rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
	isMatching := ( RBParseTreeSearcher new
			matches: '(((`@reciver `@msg1: `@arg1) `@msg2: `@arg2) `@msg3: `@arg3)  `@msg4: `@arg4'
		do: [ :node :answer || selectors |
			selectors := Bag new.
			selectors add: node selector. "msg4"
			selectors add: node receiver selector. "msg3"
			selectors add: node receiver receiver selector. "msg2"
			selectors add: node receiver receiver receiver selector. "msg1"
			(self lawOfDemeterAllowedSelectors includesAnyOf: selectors) not
				or: [answer]])
	               executeTree: rbMethodNode initialAnswer: false. 
	
	^self booleanResult: isMatching
