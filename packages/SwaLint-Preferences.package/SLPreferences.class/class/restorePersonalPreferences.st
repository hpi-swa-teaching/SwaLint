initialization - save/load
restorePersonalPreferences
	"Restore all the user's saved personal preference settings"

	| savedPrefs |
	savedPrefs := self parameterAt: #PersonalDictionaryOfPreferences ifAbsent: [^ self inform: 'There are no personal preferences saved in this image yet'].

	savedPrefs associationsDo:
		[:assoc | (self preferenceAt: assoc key ifAbsent: [nil]) ifNotNil:
			[:pref | pref preferenceValue: assoc value preferenceValue]]