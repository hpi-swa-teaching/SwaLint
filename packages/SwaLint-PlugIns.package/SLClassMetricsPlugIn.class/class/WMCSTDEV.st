preferences
WMCSTDEV

	<slpreference: 'WMC STDEV'
	categoryList: #(ClassMetrics)
	description: 'The standard deviation of the weighted method count for a class'
	type: #Numeric>
	
	^ WMCSTDEV ifNil: [ 10 ]