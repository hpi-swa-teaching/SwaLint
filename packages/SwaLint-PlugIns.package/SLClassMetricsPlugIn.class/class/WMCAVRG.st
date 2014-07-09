preferences
WMCAVRG

	<slpreference: 'WMC average'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 25
	helpText: 'The average weighted method count for a class'>
	
	^ WMCAVRG ifNil: [25].