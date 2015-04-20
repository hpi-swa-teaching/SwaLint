preferences
LargeMethodLOC

	<slpreference: 'Large method LOC'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: nil
	helpText: 'Lines of code for large methods. '>
	
	^ LargeMethodLOC 
		ifNil: [SLClassMetricsPlugIn ClassLOCAVRG + SLClassMetricsPlugIn ClassLOCSTDEV / 3]