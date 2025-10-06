add/remove - convenience
addPreference: prefSymbol categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol  changeSelector: aChangeSelector
	"Add an item representing the given preference symbol to the system."

	^ self
		addPreference: prefSymbol
		categories: categoryList
		default: aValue
		balloonHelp: helpString
		projectLocal: localBoolean
		changeInformee: informeeSymbol
		changeSelector: aChangeSelector
		type: (self typeForValue: aValue)
