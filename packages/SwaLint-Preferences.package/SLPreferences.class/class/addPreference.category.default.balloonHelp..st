add preferences
addPreference: prefSymbol category: categorySymbol default: defaultValue balloonHelp: helpString 
	"Add the given preference, putting it in the given category, with the given default value, and with the given balloon help. It assumes boolean preference for backward compatibility"

	self addBooleanPreference: prefSymbol category: categorySymbol default: defaultValue balloonHelp: helpString.