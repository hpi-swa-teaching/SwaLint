preferences
ClassLOCSTDEV

	<slpreference: 'Class LOC STDEV'
	categoryList: #(ClassMetrics)
	description: 'The standard deviation of the lines of code of a class'
	type: #Numeric>
	
	^ ClassLOCSTDEV ifNil: [ 100 ]