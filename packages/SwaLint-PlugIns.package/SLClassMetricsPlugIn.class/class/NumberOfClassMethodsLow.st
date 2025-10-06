preferences
NumberOfClassMethodsLow

	<slpreference: 'Number of class methods low'
	categoryList: #(ClassMetrics)
	description: 'The low border of number of class methods for a class'
	type: #Number>
	
	^ NumberOfClassMethodsLow ifNil: [ 3 ]