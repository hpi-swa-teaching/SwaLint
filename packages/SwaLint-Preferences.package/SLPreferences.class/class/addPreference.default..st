add/remove - convenience
addPreference: prefSymbol default: defaultValue

	^ self
		addPreference: prefSymbol
		category: self unclassifiedCategory
		default: defaultValue
		balloonHelp: nil.