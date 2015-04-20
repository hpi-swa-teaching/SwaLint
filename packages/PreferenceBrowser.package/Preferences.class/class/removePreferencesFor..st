dynamic preferences
removePreferencesFor: aClass
	"Remove all the preferences registered for the given class"
	"Preferences removePreferencesFor: PreferenceExample"
	| map |
	map := self dictionaryOfPreferences select:[:pref| pref provider == aClass].
	map keysDo:[:prefName| self dictionaryOfPreferences removeKey: prefName].