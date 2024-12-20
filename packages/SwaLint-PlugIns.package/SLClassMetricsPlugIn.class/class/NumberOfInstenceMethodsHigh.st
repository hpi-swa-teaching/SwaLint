preferences
NumberOfInstenceMethodsHigh

	<slpreference: 'Number of instance methods high' 
	categoryList: #(ClassMetrics)
	description: 'The high border of number of instance methods for a class'
	type: #Number>
	
	^ NumberOfInstenceMethodsHigh ifNil: [ 40 ]