add/remove
removePreference: aSymbol 
	"Remove all memory of the given preference symbol in my various structures."

	| pref |
	pref := self preferenceAt: aSymbol ifAbsent: [^self].
	
	pref localToProject ifTrue: [
		Project allProjects do: [ :proj | 
			 proj projectPreferenceFlagDictionary ifNotNil: [ :projectpreferences |
				projectpreferences removeKey: aSymbol ifAbsent: [] ] ] ].
	
	self atomicUpdatePreferences: [ :copyOfDictionaryOfPreferences |
		copyOfDictionaryOfPreferences removeKey: aSymbol ifAbsent: nil ].
	
	"Remove auto-generated accessor method."
	self class removeSelector: aSymbol.
	
	^ pref