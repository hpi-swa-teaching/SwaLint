preferences
AverageLOCperMethodSTDEV

	<slpreference: 'Average LOC per methods STDEV'
	type: #Numeric
	categories: #(#ClassMetrics)
	defaultValue: 3
	helpText: 'The standard deviation of the mean lines of code of the methods in one class'>
	
	^ AverageLOCperMethodSTDEV ifNil: [ 3 ]