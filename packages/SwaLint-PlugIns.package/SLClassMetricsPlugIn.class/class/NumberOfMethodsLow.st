preferences
NumberOfMethodsLow

	<slpreference: 'Number of methods low' 
	categoryList: #(ClassMetrics)
	description: 'The low border of number of methods for a class'
	type: #Number>
	
	^ NumberOfMethodsLow ifNil: [ 8 ]