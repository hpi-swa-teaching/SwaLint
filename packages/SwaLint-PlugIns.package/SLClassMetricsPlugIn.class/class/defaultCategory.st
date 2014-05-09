defaults
defaultCategory
	"hidden in final release"

	^ (SLPreferences ShowClassMetricTests) 
		ifTrue: ['Class Metrics'] 
		ifFalse: [SwaLint hiddenCategory]