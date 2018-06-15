private
methodHasMagicNumber: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: false>
	
| rbMethodNode isMatching |
aSLMethodTestObject shouldBeMethod.
rbMethodNode := RBParser parseMethod: (aSLMethodTestObject sourceCode).
	
isMatching := ( RBParseTreeSearcher new
       matchesAnyOf: #('`{:node | node isLiteralNode and: [((node parent isReturn) not) and: [((node parent isAssignment) not)] and: [node value isNumber] and: [(#(-1 1 0) includes: node value) not] ]}')
       do:[: aNode : answer | answer := true ] )
               executeTree: rbMethodNode initialAnswer: false. 

^ self booleanResult: isMatching
