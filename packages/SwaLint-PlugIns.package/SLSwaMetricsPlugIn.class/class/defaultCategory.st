defaults
defaultCategory

	^ (self ShowSwaMetricTests) 
		ifTrue: ['Software System Metrics'] 
		ifFalse: [SwaLint hiddenCategory]