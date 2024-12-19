preferences
NumberOfMethodsLow

	<slpreference: 'Number of methods low' 
	categoryList: #(ClassMetrics)
	description: 'The low border of number of methods for a class'
	type: #Numeric>
	
	^ NumberOfMethodsLow ifNil: [ 8 ]