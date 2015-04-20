preferences
LargeClassLOC

	<slpreference: 'Large class LOC'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: nil
	helpText: 'Lines of code for large classes. '>
	
	^ LargeClassLOC 
		ifNil: [SLClassMetricsPlugIn ClassLOCAVRG + SLClassMetricsPlugIn ClassLOCSTDEV * 3 ]