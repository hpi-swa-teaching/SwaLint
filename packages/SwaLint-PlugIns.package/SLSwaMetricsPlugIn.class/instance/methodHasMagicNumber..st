private
methodHasMagicNumber: aSLMethodTestObject
	
	| methodNode statements formattedCodeStatement allNumbersExcept0And1RegEx singleNumberreturnRegEx floatingPointNumberRegEx |
	
	aSLMethodTestObject shouldBeMethod.
	
	allNumbersExcept0And1RegEx := '(.)*([2-9]\d*|\d(\d)+)(.)*'.
	singleNumberreturnRegEx := '\^( )*(\d)+(\.)(\d)+( )*(\.)?'.
	floatingPointNumberRegEx := '(.)*(\d)+(\.)(\d)+(.)*'.
	
	methodNode := RBParser parseMethod: (aSLMethodTestObject sourceCode).
	statements := methodNode body statements.
	^self booleanResult: (statements anySatisfy: [ :statement | 
		formattedCodeStatement := statement formattedCode.
		formattedCodeStatement := self removeStringsFrom: formattedCodeStatement.
		(statement isReturn) 
			ifFalse: [
				(formattedCodeStatement matchesRegex: allNumbersExcept0And1RegEx) or: [formattedCodeStatement matchesRegex: floatingPointNumberRegEx]
				]
			ifTrue: [
				(formattedCodeStatement matchesRegex: allNumbersExcept0And1RegEx) and: [
				(formattedCodeStatement matchesRegex: singleNumberreturnRegEx) not]
			]
		])
