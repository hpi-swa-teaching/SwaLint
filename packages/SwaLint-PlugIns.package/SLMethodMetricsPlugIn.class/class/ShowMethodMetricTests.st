preferences
ShowMethodMetricTests

	<slpreference: 'Show method metric test'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: true
	helpText: 'Show the Metrics of the Method Metrics Plug-In in SwaLint'
	projectLocal: true
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowMethodMetricTests ifNil: [ false ]