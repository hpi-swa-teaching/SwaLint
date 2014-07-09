preferences
ShowMethodMetricTests

	<slpreference: 'Show method metric test'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: false
	helpText: 'Show the Metrics of the Method Metrics Plug-In in SwaLint'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowMethodMetricTests ifNil: [false].