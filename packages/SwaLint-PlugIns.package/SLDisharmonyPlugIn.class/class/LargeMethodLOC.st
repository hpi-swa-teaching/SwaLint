preferences
LargeMethodLOC

	<slpreference: 'Large method LOC'
	categoryList: #(Disharmony)
	description: 'Lines of code for large methods. '
	type: #Numeric>
	
	^ LargeMethodLOC 
		ifNil: [SLClassMetricsPlugIn ClassLOCAVRG + SLClassMetricsPlugIn ClassLOCSTDEV / 3]