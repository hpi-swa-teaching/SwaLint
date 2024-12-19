preferences
NumberOfMethodsHigh

	<slpreference: 'Number of methods high'
	categoryList: #(ClassMetrics)
	description: 'The high border of number of methods for a class'
	type: #Numeric>
	
	^ NumberOfMethodsHigh ifNil: [ 60 ]