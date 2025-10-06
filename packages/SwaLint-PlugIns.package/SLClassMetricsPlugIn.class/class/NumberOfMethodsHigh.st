preferences
NumberOfMethodsHigh

	<slpreference: 'Number of methods high'
	categoryList: #(ClassMetrics)
	description: 'The high border of number of methods for a class'
	type: #Number>
	
	^ NumberOfMethodsHigh ifNil: [ 60 ]