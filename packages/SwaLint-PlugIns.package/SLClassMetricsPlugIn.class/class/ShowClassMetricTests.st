preferences
ShowClassMetricTests

	<slpreference: 'Show class metrics tests' 
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: false
	helpText: 'Show the Metrics of the Class Metrics Plug-In in SwaLint'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowClassMetricTests ifNil: [false].