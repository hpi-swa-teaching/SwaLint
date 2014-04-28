preferences
loadPreferenceCategory: aSymbol

	(SLPreferences preferenceObjectsInCategory: aSymbol) do: [ :prefObject |
		self addPreference: prefObject].