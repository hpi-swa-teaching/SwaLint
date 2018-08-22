preferences
hasPreference: aSymbol

	SLPreferences preferenceAt: aSymbol ifAbsent: [^false].
	^ true