class initialization
unload
	"Unload order is not guaranteed so guard against failure"
	[PreferenceViewRegistry ofColorPreferences unregister: self] on: Error do:[]