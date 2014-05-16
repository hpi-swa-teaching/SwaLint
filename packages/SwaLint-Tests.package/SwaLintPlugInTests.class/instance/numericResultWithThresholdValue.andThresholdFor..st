building
numericResultWithThresholdValue: aValueSymbol andThresholdFor: aThresholdSymbol

	|value|
	
	value := (plugIn preferenceDict at: aValueSymbol ifAbsent:
		[self getValueFor: aValueSymbol andTreshold: aThresholdSymbol]).
	
	^plugIn numericResult: value withThresholdFor: aThresholdSymbol