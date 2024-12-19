preferences
LargeClassLOC

	<slpreference: 'Large class LOC'
	categoryList: #(Disharmony)
	description: 'Lines of code for large classes. '
	type: #Numeric>
	
	^ LargeClassLOC 
		ifNil: [SLClassMetricsPlugIn ClassLOCAVRG + SLClassMetricsPlugIn ClassLOCSTDEV * 3 ]