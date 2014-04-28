tests
methodCYCLO: aSLMethodTestObject
	"Calculates the cyclo for a method."
	
	| cyclo methodnode |
	methodnode := RBParser parseMethod: (aSLMethodTestObject sourceCode asString).
	cyclo := 1 + (self nodeCYCLO: methodnode).
	^ (self integerResult: cyclo withThresholdFor: #MethodCYCLO)
		colorLowIsGood