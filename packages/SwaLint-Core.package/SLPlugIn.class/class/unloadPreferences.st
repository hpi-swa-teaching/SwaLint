preferences
unloadPreferences

	self usedPreferences do: [ :each |
		SLPreferences removePreference: each].
	usedPreferences := nil.