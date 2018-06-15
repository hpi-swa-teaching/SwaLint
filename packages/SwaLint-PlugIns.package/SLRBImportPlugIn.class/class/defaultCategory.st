defaults
defaultCategory

	^ (self ShowSwaMetricTests) 
		ifTrue: [ 'Our tests (RBImport)' ] 
		ifFalse: [ SwaLint hiddenCategory ]