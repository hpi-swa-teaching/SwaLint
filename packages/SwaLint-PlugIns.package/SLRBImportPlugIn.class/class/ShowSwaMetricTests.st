preferences
ShowSwaMetricTests

	<slpreference: 'Show swa metric tests'
	categoryList: #(SwaLint)
	description: 'Show high-level system metrics for general assessments of source code quality'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ShowSwaMetricTests ifNil: [ true ]