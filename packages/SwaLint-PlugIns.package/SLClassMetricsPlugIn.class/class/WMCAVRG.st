preferences
WMCAVRG

	<slpreference: 'WMC average'
	categoryList: #(ClassMetrics)
	description: 'The average weighted method count for a class'
	type: #Number>
	
	^ WMCAVRG ifNil: [ 25 ]