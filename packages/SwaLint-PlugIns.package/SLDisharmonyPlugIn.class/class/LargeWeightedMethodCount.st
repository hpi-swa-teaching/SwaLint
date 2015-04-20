preferences
LargeWeightedMethodCount

	<slpreference: 'Large weighted method count'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: nil
	helpText: 'The weight of large methods'>
	
	^ LargeWeightedMethodCount 
		ifNil: [SLClassMetricsPlugIn WMCAVRG + SLClassMetricsPlugIn WMCSTDEV * 3]