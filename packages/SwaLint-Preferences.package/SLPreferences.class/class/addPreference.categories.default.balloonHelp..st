add/remove - convenience
addPreference: prefSymbol categories: categoryList default: defaultValue balloonHelp: helpString 
	"Add an item repreesenting the given preference symbol to the system."

	^ self
		addPreference: prefSymbol
		categories: categoryList
		default: defaultValue
		balloonHelp: helpString
		projectLocal: false
		changeInformee: nil
		changeSelector: nil