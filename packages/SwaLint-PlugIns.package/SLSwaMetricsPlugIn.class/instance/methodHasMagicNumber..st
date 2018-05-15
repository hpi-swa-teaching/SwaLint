private
methodHasMagicNumber: aSLMethodTestObject
	
	| methodNode statements |
	
	aSLMethodTestObject shouldBeMethod.
	
	methodNode := RBParser parseMethod: (aSLMethodTestObject sourceCode).
	statements := methodNode body statements.
	^self booleanResult: (statements anySatisfy: [ :statement | 
		(statement isReturn) 
			ifFalse: [
				statement formattedCode matchesRegex: '(.)*(\d)+(.)*']
			ifTrue: [
				false
			]
		])
