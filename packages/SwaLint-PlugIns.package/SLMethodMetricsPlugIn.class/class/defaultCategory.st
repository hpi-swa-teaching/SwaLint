defaults
defaultCategory

	^ (SLPreferences ShowMethodMetricTests) 
		ifTrue: ['Method Metrics'] 
		ifFalse: [SwaLint hiddenCategory]