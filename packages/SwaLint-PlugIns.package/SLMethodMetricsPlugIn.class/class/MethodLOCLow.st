preferences
MethodLOCLow

	<slpreference: 'Method LOC Low'
	categoryList: #(MethodMetrics)
	description: '???'
	type: #Number>
	
	^ MethodLOCLow ifNil: [ 1 ]