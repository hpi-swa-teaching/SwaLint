building
addNumericResultTo: aSLTestObject withThresholdValue: aValueSymbol andTresholdFor: aThresholdSymbol forTest: aTest
	
	aSLTestObject results add:
			((aSLTestObject testData: aTest) -> 
				(self numericResultWithThresholdValue: aValueSymbol
				andThresholdFor: aThresholdSymbol)).