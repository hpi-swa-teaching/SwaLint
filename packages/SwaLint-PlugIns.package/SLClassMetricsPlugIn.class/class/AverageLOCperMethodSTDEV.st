preferences
AverageLOCperMethodSTDEV

	<slpreference: 'Average LOC per methods STDEV'
	categoryList: #(#ClassMetrics)
	description: 'The standard deviation of the mean lines of code of the methods in one class'
	type: #Number>
	
	^ AverageLOCperMethodSTDEV ifNil: [ 3 ]