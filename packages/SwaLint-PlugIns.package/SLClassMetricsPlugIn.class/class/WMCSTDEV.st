preferences
WMCSTDEV

	<slpreference: 'WMC STDEV'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 10
	helpText: 'The standard deviation of the weighted method count for a class'>
	
	^ WMCSTDEV ifNil: [10].