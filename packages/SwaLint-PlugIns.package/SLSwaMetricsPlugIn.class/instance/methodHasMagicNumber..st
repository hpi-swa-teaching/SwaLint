private
methodHasMagicNumber: aSLMethodTestObject
| rbMethodNode isMatching |

SLMethodTestObject shouldBeMethod.
rbMethodNode := RBParser parseMethod: (SLMethodTestObject sourceCode).
	
isMatching := ( RBParseTreeSearcher new
       matchesAnyOf: #('`{:node | node isLiteralNode and: [node isValue] and: [((node parent isReturn) not) and: [((node parent isAssignment) not)] and: [Transcript show: node value. (#(-1 1 0) includes: node value) not] ]}')
       do:[: aNode : answer | answer := true ] )
               executeTree: rbMethodNode initialAnswer: false. 
