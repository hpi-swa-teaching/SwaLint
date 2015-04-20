add preferences
addBooleanPreference: prefSymbol categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol  changeSelector: aChangeSelector
	"Add an item repreesenting the given preference symbol to the system. Default view for this preference is boolean"

	self addPreference: prefSymbol  categories: categoryList default:  aValue balloonHelp: helpString  projectLocal: localBoolean  changeInformee: informeeSymbol changeSelector: aChangeSelector type: #Boolean