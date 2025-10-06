accessing
allPreferences

	^preferencesDictionary values reject: [:pref | pref isDeprecated]