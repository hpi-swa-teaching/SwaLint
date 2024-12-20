preferences
WMCSTDEV

	<slpreference: 'WMC STDEV'
	categoryList: #(ClassMetrics)
	description: 'The standard deviation of the weighted method count for a class'
	type: #Number>
	
	^ WMCSTDEV ifNil: [ 10 ]