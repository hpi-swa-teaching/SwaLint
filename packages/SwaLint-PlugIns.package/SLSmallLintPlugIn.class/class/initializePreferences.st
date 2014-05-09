preferences
initializePreferences

	self externalTests do: [ :each |
		SLPreferences
			addBooleanPreference: each first asSymbol
			categories: {self defaultCategory, ' Tests'}
			default: true
			balloonHelp: each third
			projectLocal: false
			changeInformee: SwaLint
			changeSelector: #refresh].