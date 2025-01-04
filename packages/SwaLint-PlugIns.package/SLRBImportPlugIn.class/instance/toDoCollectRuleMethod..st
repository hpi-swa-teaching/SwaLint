methodTests
toDoCollectRuleMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	| rbMethodNode isMatching |
	aMethodTestObject shouldBeMethod.
	rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
	isMatching := ( RBParseTreeSearcher new
	       matchesAnyOf: #(
				'| `@temps1 |
				`@.Stmts1.
				`collection := Array new: `@size.
				`@.Stmts2.
				1 to: `@size do: 
						[:`i | 
						| `@Btemps2 | 
						`@.BStmts1. 
						`collection at: `i put: `@obj.
						`@.BStmt2].
				`@.Stmts3'
					'| `@temps1 |
				`@.Stmts1.
				`collection := Array new: `@size.
				`@.Stmts2.
				1 to: `collection size do: 
						[:`i | 
						| `@Btemps2 | 
						`@.BStmts1. 
						`collection at: `i put: `@obj.
						`@.BStmt2].
				`@.Stmts3'
				'| `@temps1 |
				`@.Stmts1.
				`collection := Array new: `@size.
				`@.Stmts2.
				1 to: `@size do: 
						[:`i | 
						| `@Btemps2 | 
						`@.BStmts1. 
						`collection add: `@obj.
						`@.BStmt2].
				`@.Stmts3'
					'| `@temps1 |
				`@.Stmts1.
				`collection := Array new: `@size.
				`@.Stmts2.
				1 to: `collection size do: 
						[:`i | 
						| `@Btemps2 | 
						`@.BStmts1. 
						`collection add: `@obj.
						`@.BStmt2].
				`@.Stmts3')
	       do:[: aNode : answer | true ] )
	               executeTree: rbMethodNode initialAnswer: false. 

	^self booleanResult: (isMatching)
