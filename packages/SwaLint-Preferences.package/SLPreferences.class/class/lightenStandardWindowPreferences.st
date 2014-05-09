window colors
lightenStandardWindowPreferences
	"Make all window-color preferences one shade darker"

		(self allPreferenceObjects 
		select: [:aPref | (aPref name endsWith: 'WindowColor')
								and: [aPref preferenceValue isColor]])
		do: [:aPref | aPref preferenceValue: aPref preferenceValue lighter].

"Preferences lightenStandardWindowPreferences"
