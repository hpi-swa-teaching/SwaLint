tests
longMethodMethod: aMethodTestObject

| rbMethodNode matches |
aMethodTestObject shouldBeMethod.
rbMethodNode := RBParser parseMethod: (aMethodTestObject sourceCode).
matches := ( RBParseTreeSearcher new
       matchesAnyOf: #('`.Stmt')
       do:[: aNode : answer | answer := answer +1 ] )
               executeTree: rbMethodNode initialAnswer: 0. 
	^self booleanResult: (matches > self longMethodSize)
