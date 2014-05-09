preferences
addBooleanPreference: aName categories: categoryList default: aValue balloonHelp: helpString
"Creates a new preference assigned to this plug in."

	self 
		addPreference: aName 
		categories: categoryList 
		default: aValue 
		balloonHelp: helpString 
		projectLocal: nil 
		changeInformee: nil 
		changeSelector: nil 
		type: #Boolean