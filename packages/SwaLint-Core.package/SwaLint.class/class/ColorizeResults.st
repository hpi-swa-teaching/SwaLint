preferences
ColorizeResults

	<slpreference: 'Colorize Results'
	categoryList: #(SwaLint)
	description: 'Show Colors in the Resultdialog'
	type: #Boolean
	changeInformee: #SwaLint
	changeSelector: #refresh>
	
	^ ColorizeResults ifNil: [false]

	