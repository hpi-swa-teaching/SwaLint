preferences
MethodCYCLOHigh

	<slpreference: 'Method CYCLO high'
	categoryList: #(MethodMetrics)
	description: 'The high border of method CYCLO'
	type: #Number>
	
	^ MethodCYCLOHigh ifNil: [ 3 ]