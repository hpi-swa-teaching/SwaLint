private
methodHasMagicNumber: aSLMethodTestObject
	
	| methodNode statements |
	
	aSLMethodTestObject shouldBeMethod.
	
	methodNode := RBParser parseMethod: (aSLMethodTestObject sourceCode).
	statements := methodNode body statements.
	^self booleanResult: (statements anySatisfy: [ :statement | 
		(statement isReturn) 
			ifFalse: [
				statement formattedCode matchesRegex: '(.)*([2-9]\d*|\d(\d)+)(.)*']
			ifTrue: [
				false
			]
		])
