preferences
MethodLOCHigh

	<slpreference: 'Method LOC High'
	categoryList: #(MethodMetrics)
	description: '???'
	type: #Number>
	
	^ MethodLOCHigh ifNil: [ 10 ]