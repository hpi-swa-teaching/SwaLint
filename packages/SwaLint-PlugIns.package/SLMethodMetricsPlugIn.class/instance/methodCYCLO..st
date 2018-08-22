tests
methodCYCLO: aSLMethodTestObject
	"Calculates the cyclo for a method."

	<slTestName: 'Cyclomatic Complexity of a Method [CYCLO]'
	description: 'Cyclomatic Complexity by McCabe'>

	| cyclo methodnode |

	methodnode := RBParser parseMethod: (aSLMethodTestObject sourceCode asString).
	cyclo := 1 + (self nodeCYCLO: methodnode).
	^ (self integerResult: cyclo withThresholdFor: #MethodCYCLO)
		colorLowIsGood