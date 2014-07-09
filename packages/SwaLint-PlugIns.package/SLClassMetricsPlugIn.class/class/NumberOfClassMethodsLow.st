preferences
NumberOfClassMethodsLow

	<slpreference: 'Number of class methods low'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 3
	helpText: 'The low border of number of class methods for a class'>
	
	^ NumberOfClassMethodsLow ifNil: [3].