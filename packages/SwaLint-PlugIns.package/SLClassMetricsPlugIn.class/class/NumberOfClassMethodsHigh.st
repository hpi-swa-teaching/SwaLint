preferences
NumberOfClassMethodsHigh

	<slpreference: 'Number of class methods high'
	categoryList: #(ClassMetrics)
	description: 'The high border of number of class methods for a class'
	type: #Number>
	
	^ NumberOfClassMethodsHigh ifNil: [ 20 ]