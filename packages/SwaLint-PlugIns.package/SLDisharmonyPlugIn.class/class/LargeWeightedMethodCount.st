preferences
LargeWeightedMethodCount

	<slpreference: 'Large weighted method count'
	categoryList: #(Disharmony)
	description: 'The weight of large methods'
	type: #Numeric>
	
	^ LargeWeightedMethodCount 
		ifNil: [SLClassMetricsPlugIn WMCAVRG + SLClassMetricsPlugIn WMCSTDEV * 3]