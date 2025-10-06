preferences
LargeWeightedMethodCount

	<slpreference: 'Large weighted method count'
	categoryList: #(Disharmony)
	description: 'The weight of large methods'
	type: #Number>
	
	^ LargeWeightedMethodCount 
		ifNil: [SLClassMetricsPlugIn WMCAVRG + SLClassMetricsPlugIn WMCSTDEV * 3]