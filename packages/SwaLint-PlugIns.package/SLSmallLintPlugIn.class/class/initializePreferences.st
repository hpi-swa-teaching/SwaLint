preferences
initializePreferences

	self externalTests do: [ :each |
		SLPreferences
			addBooleanPreference: each first asSymbol
			categories: {self defaultCategory, ' Tests'}
			default: (self defaultPreferenceOf: each first asSymbol)
			balloonHelp: each third
			projectLocal: false
			changeInformee: SwaLint
			changeSelector: #refresh].