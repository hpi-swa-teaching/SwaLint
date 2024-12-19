support - misc
inspectPreferences
	"Open a window on the current preferences dictionary, allowing the user to inspect and change the current preference settings.  This is fallen back upon if Morphic is not present. This is dangerous, the dictionary of preferences should not be accessed concurrently."

	"SLPreferences inspectPreferences"

	preferencesDictionary inspectWithLabel: 'SLPreferences'