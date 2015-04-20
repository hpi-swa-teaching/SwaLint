accessing
dictionaryOfPreferences
	^DictionaryOfPreferences ifNil: [DictionaryOfPreferences := IdentityDictionary new]