defaults
defaultCategory

	^ (SLPreferences ShowSwaMetricTests) 
		ifTrue: ['Software System Metrics'] 
		ifFalse: [SwaLint hiddenCategory]