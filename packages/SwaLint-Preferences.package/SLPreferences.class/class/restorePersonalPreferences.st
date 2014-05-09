personalization
restorePersonalPreferences
	"Restore all the user's saved personal preference settings"

	| savedPrefs |
	savedPrefs := self parameterAt: #PersonalDictionaryOfSwaLintPreferences ifAbsent: [^ self inform: 'There are no personal preferences saved in this image yet'].

	savedPrefs associationsDo:
		[:assoc | (self preferenceAt: assoc key ifAbsent: [nil]) ifNotNilDo:
			[:pref | pref preferenceValue: assoc value preferenceValue]]