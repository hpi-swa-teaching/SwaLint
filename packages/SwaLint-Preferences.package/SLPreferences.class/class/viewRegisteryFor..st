add preferences
viewRegisteryFor: aSymbol

	^ ((Dictionary new)
		at: #Boolean put: [PreferenceViewRegistry ofBooleanPreferences];
		at: #Color put: [PreferenceViewRegistry ofColorPreferences];
		at: #Font put: [PreferenceViewRegistry ofFontPreferences];
		at: #Numeric put: [PreferenceViewRegistry ofNumericPreferences];
		at: #Text put: [PreferenceViewRegistry ofTextPreferences];
		at: aSymbol) value