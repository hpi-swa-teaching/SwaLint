preferences
MethodCYCLOLow

	<slpreference: 'Method CYCLO low'
	categoryList: #(MethodMetrics)
	description: 'The low border of method CYCLO'
	type: #Number>
	
	^ MethodCYCLOLow ifNil: [ 1 ]