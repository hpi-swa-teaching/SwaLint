preferences
MethodLOCSTDEV

	<slpreference: 'Method LOC STDEV'
	categoryList: #(MethodMetrics)
	description: 'The standard deviation of the lines of code of a method'
	type: #Numeric>
	
	^ MethodLOCSTDEV ifNil: [ 3 ]