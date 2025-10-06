add/remove - convenience
addPreference: prefSymbol category: categorySymbol default: defaultValue
	"Add the given preference, putting it in the given category, with the given default value, and with the given balloon help."

	^ self
		addPreference: prefSymbol
		category: categorySymbol
		default: defaultValue
		balloonHelp: nil.