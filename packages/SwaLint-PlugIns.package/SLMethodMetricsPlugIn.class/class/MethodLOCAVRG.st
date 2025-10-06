preferences
MethodLOCAVRG

	<slpreference: 'Method LOC average'
	categoryList: #(MethodMetrics)
	description: 'The average of lines of code of a method'
	type: #Number>
	
	^ MethodLOCAVRG ifNil: [ 7 ]