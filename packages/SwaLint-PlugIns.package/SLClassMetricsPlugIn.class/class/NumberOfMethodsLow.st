preferences
NumberOfMethodsLow

	<slpreference: 'Number of methods low' 
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 8
	helpText: 'The low border of number of methods for a class'>
	
	^ NumberOfMethodsLow ifNil: [ 8 ]