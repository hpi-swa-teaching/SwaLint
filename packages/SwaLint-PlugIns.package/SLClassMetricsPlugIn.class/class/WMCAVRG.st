preferences
WMCAVRG

	<slpreference: 'WMC average'
	categoryList: #(ClassMetrics)
	description: 'The average weighted method count for a class'
	type: #Numeric>
	
	^ WMCAVRG ifNil: [ 25 ]