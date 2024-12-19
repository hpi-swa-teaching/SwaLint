preferences
NumberOfClassMethodsHigh

	<slpreference: 'Number of class methods high'
	categoryList: #(ClassMetrics)
	description: 'The high border of number of class methods for a class'
	type: #Numeric>
	
	^ NumberOfClassMethodsHigh ifNil: [ 20 ]