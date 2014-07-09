preferences
NumberOfInstanceMethodsLow

	<slpreference: 'Number of instance methods low'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 5
	helpText: 'The low border of number of instance methods for a class'>
	
	^ NumberOfInstanceMethodsLow ifNil: [5].