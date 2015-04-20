add preferences
addPreference: prefSymbol categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol  changeSelector: aChangeSelector
	"Add an item representing the given preference symbol to the system. Default view for this preference is boolean to keep backward compatibility"

	self addBooleanPreference: prefSymbol categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol  changeSelector: aChangeSelector
