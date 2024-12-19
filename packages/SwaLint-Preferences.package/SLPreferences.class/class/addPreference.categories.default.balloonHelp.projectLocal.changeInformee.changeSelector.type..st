add/remove
addPreference: aName categories: categoryList default: aValue balloonHelp: helpString projectLocal: localBoolean changeInformee: informeeSymbol changeSelector: aChangeSelector type: aType
	"Add or replace a preference as indicated.  Reuses the preexisting Preference object for this symbol, if there is one, so that UI artifacts that interact with it will remain valid."

	| newPreference aPreference |
	newPreference := SLPreference new
		name: aName asSymbol
		defaultValue: aValue
		helpString: helpString
		localToProject: localBoolean
		categoryList: categoryList
		changeInformee: informeeSymbol
		changeSelector: aChangeSelector
		type: aType;
		yourself.
	aPreference := preferencesDictionary
						 at: newPreference name
						 ifAbsent: [newPreference].
	aPreference == newPreference
		ifTrue: "Atomically add the new preference to the dictionary."
			[self atomicUpdatePreferences:
				[:preferenceDictionaryCopy|
				preferenceDictionaryCopy at: newPreference name put: newPreference]]
		ifFalse: "Use the copyFrom: primitive to atomically update the existing preference."
			[aPreference copyFrom: newPreference].
	self compileAccessorForPreference: aPreference.

	^ aPreference