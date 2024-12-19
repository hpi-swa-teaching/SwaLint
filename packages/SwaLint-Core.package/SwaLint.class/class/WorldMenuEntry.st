preferences
WorldMenuEntry

	<slpreference: 'World Menu Entry'
	categoryList: #(SwaLint)
	description: 'Show SwaLint entry in WorldMenu > open.'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #worldMenuPreferenceChanged>
	
	^ WorldMenuEntry ifNil: [true]

	