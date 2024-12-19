preferences
NumberOfInstanceMethodsLow

	<slpreference: 'Number of instance methods low'
	categoryList: #(ClassMetrics)
	description: 'The low border of number of instance methods for a class'
	type: #Numeric>
	
	^ NumberOfInstanceMethodsLow ifNil: [ 5 ]