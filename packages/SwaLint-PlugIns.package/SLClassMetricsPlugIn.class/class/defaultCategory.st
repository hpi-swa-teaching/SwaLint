defaults
defaultCategory
	"hidden in final release"

	^ (self ShowClassMetricTests) 
		ifTrue: ['Class Metrics'] 
		ifFalse: [SwaLint hiddenCategory]