preferences
DebugMode

	<slpreference: 'Debug Mode'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: false
	helpText: 'Enables the debug mode of SwaLint.'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ DebugMode ifNil: [false]

	