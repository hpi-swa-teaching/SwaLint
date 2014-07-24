preferences
MethodLOCSTDEV

	<slpreference: 'Method LOC STDEV'
	type: #Numeric
	categories: #(MethodMetrics)
	defaultValue: 3
	helpText: 'The standard deviation of the lines of code of a method'>
	
	^ MethodLOCSTDEV ifNil: [ 3 ]