as yet unclassified
collectionProtocolRuleMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>
	
| rbMethodNode isMatching |
rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
isMatching := ( RBParseTreeSearcher new
		matchesAnyOf: #(
			'`@collection do: [:`each | | `@temps | `@.Statements1. `@object add: `@arg. `@.Statements2]'
			'`@collection do: [:`each | | `@temps | 
				`@.Statements1. 
				`@condition ifTrue: [| `@blockTemps | 
						`@.BlockStatements1. 
						`@object add: `@arg. 
						`@.BlockStatements2]. 
				`@.Statements2]'
			'`@collection do: [:`each | | `@temps | 
				`@.Statements1. 
				`@condition ifFalse: [| `@blockTemps | 
						`@.BlockStatements1. 
						`@object add: `@arg. 
						`@.BlockStatements2]. 
				`@.Statements2]' )
		do: [ :node :answer | true])
               executeTree: rbMethodNode initialAnswer: false. 
	^self booleanResult: isMatching
