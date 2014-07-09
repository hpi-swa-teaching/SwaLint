preferences
ClassLOCSTDEV

	<slpreference: 'Class LOC STDEV'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 100
	helpText: 'The standard deviation of the lines of code of a class'>
	
	^ ClassLOCSTDEV ifNil: [100].