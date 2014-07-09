defaults
defaultCategory

	^ (self ShowMethodMetricTests) 
		ifTrue: ['Method Metrics'] 
		ifFalse: [SwaLint hiddenCategory]