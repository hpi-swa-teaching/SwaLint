preferences
ShowMethodMetricTests

	<slpreference: 'Show method metric test'
	categoryList: #(SwaLint)
	description: 'Show the Metrics of the Method Metrics Plug-In in SwaLint'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowMethodMetricTests ifNil: [ false ]