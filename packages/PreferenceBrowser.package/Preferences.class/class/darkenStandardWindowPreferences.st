window colors
darkenStandardWindowPreferences
	"Make all window-color preferences one shade darker"

	(self allPreferenceObjects 
		select: [:aPref | (aPref name endsWith: 'WindowColor')
								and: [aPref preferenceValue isColor]])
		do: [:aPref | aPref preferenceValue: aPref preferenceValue darker].

"Preferences darkenStandardWindowPreferences"
