preferences
NumberOfInstenceMethodsHigh

	<slpreference: 'Number of instance methods high' 
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 40
	helpText: 'The high border of number of instance methods for a class'>
	
	^ NumberOfInstenceMethodsHigh ifNil: [40].