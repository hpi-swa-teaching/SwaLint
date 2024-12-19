preferences
DebugMode

	<slpreference: 'Debug Mode'
	categoryList: #(SwaLint)
	description: 'Enables the debug mode of SwaLint.'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>

	^ DebugMode ifNil: [false]