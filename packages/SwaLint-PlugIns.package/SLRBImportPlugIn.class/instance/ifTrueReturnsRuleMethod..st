as yet unclassified
ifTrueReturnsRuleMethod: aMethodTestObject

	<slTestHidden: true
	longRuntime: nil>
	
	| rbMethodNode isMatching |
	rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
	isMatching := ( RBParseTreeSearcher new
			matchesAnyOf: #(
			'| `@temps | ``@.Statements. ``@object ifTrue: [^``@value1]. ^``@value2' 
			'| `@temps | ``@.Statements. ``@object ifFalse: [^``@value1]. ^``@value2' )
		do: [ :node :answer || condition |
			condition := (node statements at: node statements size - 1) arguments first 
				body statements 
				last value.	"``@value1"
			((condition isLiteral 
				and: [ #(true false) includes: condition value ]) 
				or: [ 
					condition := 	node statements last value.
					condition isLiteral and: [ #(true false) includes: condition value ]])])
	               executeTree: rbMethodNode initialAnswer: false. 
	
	^self booleanResult: isMatching
