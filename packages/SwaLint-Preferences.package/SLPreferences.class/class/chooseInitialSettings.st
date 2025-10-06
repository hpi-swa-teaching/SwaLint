initialization
chooseInitialSettings
	"Restore the default choices for all of the standard Preferences."

	self allPreferences do: [:aPreference |
		aPreference restoreDefaultValue].
	Project current installProjectPreferences