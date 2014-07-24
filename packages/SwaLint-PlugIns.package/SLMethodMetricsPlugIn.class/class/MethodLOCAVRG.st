preferences
MethodLOCAVRG

	<slpreference: 'Method LOC average'
	type: #Numeric
	categories: #(MethodMetrics)
	defaultValue: 7
	helpText: 'The average of lines of code of a method'>
	
	^ MethodLOCAVRG ifNil: [ 7 ]