preferences
MethodCYCLOHigh

	<slpreference: 'Method CYCLO high'
	type: #Numeric
	categories: #(MethodMetrics)
	defaultValue: 3
	helpText: 'The high border of method CYCLO'>
	
	^ MethodCYCLOHigh ifNil: [3].