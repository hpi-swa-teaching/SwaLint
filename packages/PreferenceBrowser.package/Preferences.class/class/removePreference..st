initialization
removePreference: aSymbol 
	"Remove all memory of the given preference symbol in my various structures."

	| pref |
	pref := self  preferenceAt:aSymbol  ifAbsent:[^ self].
	pref localToProject 
		 ifTrue:
			[Project  allInstancesDo:
					[:proj | 
					proj projectPreferenceFlagDictionary  ifNotNil:
							[proj projectPreferenceFlagDictionary  removeKey:aSymbol  ifAbsent:[]]]].
	self dictionaryOfPreferences  removeKey:aSymbol  ifAbsent:[].
	self class  removeSelector:aSymbol

	"Preferences removePreference: #tileToggleInBrowsers"