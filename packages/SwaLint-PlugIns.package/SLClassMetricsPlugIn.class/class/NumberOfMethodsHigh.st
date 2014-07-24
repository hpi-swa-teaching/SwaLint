preferences
NumberOfMethodsHigh

	<slpreference: 'Number of methods high'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 60
	helpText: 'The high border of number of methods for a class'>
	
	^ NumberOfMethodsHigh ifNil: [ 60 ]