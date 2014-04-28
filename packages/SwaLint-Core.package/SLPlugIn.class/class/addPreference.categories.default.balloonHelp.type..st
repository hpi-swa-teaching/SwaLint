preferences
addPreference: aName categories: categoryList default: aValue balloonHelp: helpString type: aSymbol
"Creates a new preference assigned to this plug in.
type should be one of {#Boolean. #Numeric. #Color. #Font}"

	self 
		addPreference: aName 
		categories: categoryList 
		default: aValue 
		balloonHelp: helpString 
		projectLocal: nil 
		changeInformee: nil 
		changeSelector: nil 
		type: aSymbol