preferences
ShowClassMetricTests

	<slpreference: 'Show class metrics tests' 
	categoryList: #(SwaLint)
	description: 'Show the Metrics of the Class Metrics Plug-In in SwaLint'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowClassMetricTests ifNil: [ false ]