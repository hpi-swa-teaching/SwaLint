preferences
ClassLOCAVRG

	<slpreference: 'Class LOC average'
	type: #Numeric
	categories: #(ClassMetrics)
	defaultValue: 200
	helpText: 'The average of lines of code of a class'>
	
	^ ClassLOCAVRG ifNil: [200].