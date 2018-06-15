tests
methodLOC: aSLMethodTestObject
	" as of [OOMP]:
	'The number of lines of code of an operation, including blank lines and comments [LK94]' "

	<slTestName: 'Lines of Code of a Method [LOC]'
	description: 'Answer the number of lines of code of a method'>

	^ (self 
		integerResult: aSLMethodTestObject sourceCode lineCount
		withThresholdFor: #MethodLOC)
			colorLowIsGood