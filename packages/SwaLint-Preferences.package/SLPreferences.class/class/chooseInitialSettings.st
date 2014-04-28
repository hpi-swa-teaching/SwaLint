initialization
chooseInitialSettings
	"Restore the default choices for all of the standard Preferences."

	self allPreferenceObjects do:
		[:aPreference |
			aPreference restoreDefaultValue].
	Project current installProjectPreferences