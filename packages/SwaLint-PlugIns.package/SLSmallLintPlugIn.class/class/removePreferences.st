preferences
removePreferences

	self externalTests do: [ :each |
		SLPreferences removePreference: each first asSymbol].