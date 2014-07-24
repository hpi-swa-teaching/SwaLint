preferences
ColorizeResults

	<slpreference: 'Colorize Results'
	type: #Boolean
	categories: #(SwaLint)
	defaultValue: false
	helpText: 'Show Colors in the Resultdialog'
	projectLocal: false
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ColorizeResults ifNil: [false]

	