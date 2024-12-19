preferences
MethodCYCLOLow

	<slpreference: 'Method CYCLO low'
	categoryList: #(MethodMetrics)
	description: 'The low border of method CYCLO'
	type: #Numeric>
	
	^ MethodCYCLOLow ifNil: [ 1 ]