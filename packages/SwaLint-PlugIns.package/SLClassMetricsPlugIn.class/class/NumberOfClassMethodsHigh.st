preferences
NumberOfClassMethodsHigh

	<slpreference: 'Number of class methods high'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 20
	helpText: 'The high border of number of class methods for a class'>
	
	^ NumberOfClassMethodsHigh ifNil: [20].