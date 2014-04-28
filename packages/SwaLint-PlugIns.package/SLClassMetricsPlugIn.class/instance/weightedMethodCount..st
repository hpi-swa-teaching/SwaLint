tests
weightedMethodCount: aSLClassTestObject
	"Per [OOMP]:
	 	definition of WMC [CK94]: the sum of the CYCLO metric [McC76] over 
		all methods of a class"

	^ self numericResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodCYCLO)
		withThresholdFor: #WMC