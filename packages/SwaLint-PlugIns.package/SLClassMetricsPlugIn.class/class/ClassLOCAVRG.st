preferences
ClassLOCAVRG

	<slpreference: 'Class LOC average'
	categoryList: #(ClassMetrics)
	description: 'The average of lines of code of a class'
	type: #Numeric>
	
	^ ClassLOCAVRG ifNil: [ 200 ]