tests
methodLOC: aSLMethodTestObject
	" as of [OOMP]:
	'The number of lines of code of an operation, including blank lines and comments [LK94]' "

	^ (self 
		integerResult: aSLMethodTestObject sourceCode lineCount
		withThresholdFor: #MethodLOC)
			colorLowIsGood