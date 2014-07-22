preferences
WorldMenuEntry

	<slpreference: 'World Menu Entry'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: true
	helpText: 'Show SwaLint entry in WorldMenu > open.'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #worldMenuPreferenceChanged>
	
	^ WorldMenuEntry ifNil: [true].

	