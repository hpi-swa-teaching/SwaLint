tests
weightedMethodCount: aSLClassTestObject

	<slTestName: 'Weighted method count [WMC]'
	description: 'Answer the weighted method count of a class based on its total CYCLO' >

	^ self numericResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodCYCLO:)
		withThresholdFor: #WMC